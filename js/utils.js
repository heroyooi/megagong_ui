const Lab = window.Lab || (function($, window, document, undefined) {
  return {
      init: () => {
          toastr.options = {
              timeOut: 2000,
              positionClass: 'toast-bottom-center'
          }
      },
      showCode: () => {
          document.querySelectorAll('code').forEach((element) => {
              hljs.highlightElement(element);
          });
      },
      success: (message) => {
          toastr.success(message);
      },
      error: (message) => {
          toastr.error(message);
          console.error(message);
      },
      top: () => {
          window.scrollTo(0, 0);
      },
  }
}(window.jQuery, window, document));

(function(){
  Lab.init();
})();