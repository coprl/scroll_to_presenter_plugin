(function() {
  window.scroll_to = function scroll_to(options, params, _event, results) {
    return new Promise(function(resolve, reject) {
      const elem = document.getElementById(options.element);

      if (elem && window['scroll']) {
        const y = elem.getBoundingClientRect().top + window.scrollY - options.offset;
        const scroll_options = { top: y };
        if (options.smooth) {
          scroll_options.behavior = 'smooth';
        }
        window.scroll(scroll_options);

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
          content: { errors: 'Missing element or scroll function' },
          statusCode: 500
        });

        reject(results);
      }
    });
  }
})();
