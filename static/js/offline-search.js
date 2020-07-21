(function ($) {
    'use strict';

    var lunrIndex,
        $results,
        documents;

    function initLunr() {
        // retrieve the index file
        $.getJSON("/lunr.json")
            .done(function (index) {
                documents = index;

                lunrIndex = lunr(function () {
                    this.ref('uri');
                    this.field('content');

                    this.field("title", {
                        boost: 10
                    });

                    this.field("tags", {
                        boost: 5
                    });

                    documents.forEach(function (doc) {
                        try {
                            this.add(doc)
                        } catch (e) {
                        }
                    }, this)
                })
            })
            .fail(function (jqxhr, textStatus, error) {
                var err = textStatus + ", " + error;
                console.error("Error getting Lunr index file:", err);
            });
    }

    function search(query) {
        return lunrIndex.search(query).map(function (result) {
            return documents.filter(function (page) {
                try {
                    return page.uri === result.ref;
                } catch (e) {
                    console.log('whoops')
                }
            })[0];
        });
    }

    function renderResults(resultWidget, searchResults) {
        if (!searchResults.length) {
            return;
        }

        // show first ten searchResults
        searchResults.slice(0, 10).forEach(function (result) {
            var $result = $("<li>");

            var hrefElement = $("<a>")
                .attr("href", result.uri)
                .attr("title", result.title)
                .text("» " + result.title);
            $result.append(hrefElement);

            resultWidget.append($result);
        });
    }

    function initUI() {
        $results = $("#results");
        const $searchInput = $('#td-search-input');

        $searchInput.keyup(function () {
            // empty previous results
            $results.empty();

            // trigger search when at least two chars provided.
            var query = $(this).val();
            if (query.length < 2) {
                return;
            }

            var results = search(query);

            renderResults($results, results);
        });
    }

    initLunr();

    $(document).ready(function () {
        initUI();
    });
})(jQuery);
