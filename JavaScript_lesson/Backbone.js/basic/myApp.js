$(function(){
	// Model
	var TaskA = Backbone.Model.extend();
	// Objectのattributesに設定される
	var task1 = new TaskA({
		title: 'do it!',
		completed: true
	});
	console.log(task1);
	// Model (デフォルトつき)
	var TaskB = Backbone.Model.extend({
			defaults: {
				title: 'do something',
				completed: false
			},
			validate: function(attr) {
				if (_.isEmpty(attr.title)) {
					return "title must be empty!";
				}
			},
			// 関数の登録
			toggle: function() {
				this.set('completed', !this.get('completed'))
			}
	});
	var task2 = new TaskB();
	console.log(task2);
	// JSON形式(設定した属性のみ出力できる)
	// console.log(task2.toJSON());
	// getter / setter
	task1.set('title','new Title!');
	console.log(task1.toJSON());
	console.log(task1.get('title'));
	console.log(task2.toJSON());
	task2.toggle();
	console.log(task2.toJSON());
	// validateを有効にする -> 変更が反映されない
	task2.set({title: ''}, {validate: true});
	console.log(task2.toJSON());
	// view
	var TaskC = Backbone.Model.extend({
			defaults: {
				title: 'do something',
				completed: false
			}
	});
	var task3 = new TaskC();
	// View : DOM要素を作っていく
	var TaskView = Backbone.View.extend({
	  tagName: "li",
		events: {
			// "click": "sayHello"
			"click .command": "sayHello" // セレクタを指定："command"classに適用
		},
		sayHello: function() {
			alert('Hello!!');
		},
		// className: 'liClass',
		// id: 'liId'
	  // template: _.template('<%- title %>'),
		template: _.template($('#task-template').html()),
		render: function() {
			var template = this.template(this.model.toJSON());
			this.$el.html(template);
			return this; // renderのときはreturn thisをつける！
		}
	});
	var taskView = new TaskView({
		model: task3
	});
	// el要素が自動で作られる（$elでjQueryで使える）
	// console.log(taskView.el);
	console.log(taskView.render().el);
	$('body').append(taskView.render().el);
	/////////////////////////
	// collection
	/////////////////////////
	TaskView = Backbone.View.extend({
	  tagName: "li",
		template: _.template($('#task-template').html()),
		render: function() {
			var template = this.template(this.model.toJSON());
			this.$el.html(template);
			return this; // renderのときはreturn thisをつける！
		}
	});
	var Tasks = Backbone.Collection.extend({
	  model: TaskC
	});
	var TasksView =  Backbone.View.extend({
		tagName: 'ul',
		render: function(){
			this.collection.each(function(task) {
				var taskView = new TaskView({
					model: task
				});
				// this : ul
				this.$el.append(taskView.render().el);
			}, this); // contextをthisに指定
			return this;
		}
	});
	var tasks = new Tasks([
		{title: 'task1', completed: true},
		{title: 'task2'},
		{title: 'task3'}
	]);
	// console.log(tasks.toJSON());
	var tasksView = new TasksView({collection: tasks});
	$('#tasksView').html(tasksView.render().el);
});
