<app-links>
  <style scoped>
    :scope {
      display: block;
      padding: 2em 0;
    }
  </style>

  <!-- <ring title="GitHub" url="https://github.com/osscafe" />
  <ring title="Twitter" url="https://twitter.com/osscafe" />
  <ring title="Facebook" url="https://www.facebook.com/shimokitazawa.osscafe" /> -->
  <ring each={ opts.items } title={ title } url={ url } />
</app-links>
