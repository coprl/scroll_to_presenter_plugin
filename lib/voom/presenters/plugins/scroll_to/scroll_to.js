(function() {
  window.scroll_to = function scroll_to(options, params, _event, results) {
    return new Promise(function(resolve, reject) {
      const elem = document.getElementById(options.element);

      if (elem && elem['scrollIntoView']) {
        elem.scrollIntoView();

        results.push({
          action: 'scroll_to',
          content: true,
          statusCode: 200
        });

        resolve(results);
      } else {
        results.push({
          action: 'scroll_to',
          contentType: 'v/errors',
          content: { errors: 'Missing element or scrollIntoView function' },
          statusCode: 500
        });

        reject(results);
      }
    });
  }
})();
