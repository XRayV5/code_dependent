(function() {
  var template = Handlebars.template, templates = Handlebars.templates = Handlebars.templates || {};
templates['tomato'] = template({"compiler":[7,">= 4.0.0"],"main":function(container,depth0,helpers,partials,data) {
    var helper, alias1=depth0 != null ? depth0 : {}, alias2=helpers.helperMissing, alias3="function", alias4=container.escapeExpression;

  return "    <div class=\"ui-card\">\n      <header class=\"content card-header\">\n        <div class=\"right\">"
    + alias4(((helper = (helper = helpers.Type || (depth0 != null ? depth0.Type : depth0)) != null ? helper : alias2),(typeof helper === alias3 ? helper.call(alias1,{"name":"Type","hash":{},"data":data}) : helper)))
    + "</div>\n        <img class=\"avatar\" src=\"https://placeholdit.imgix.net/~text?txtsize=75&txt=800%C3%97800&w=800&h=800\" alt=\"\"> DT\n      </header>\n\n      <div class=\"image\">\n        <img class=\"\" src=\""
    + alias4(((helper = (helper = helpers.Poster || (depth0 != null ? depth0.Poster : depth0)) != null ? helper : alias2),(typeof helper === alias3 ? helper.call(alias1,{"name":"Poster","hash":{},"data":data}) : helper)))
    + "\" alt=\"\">\n        <span class=\"star\">\n          <span class=\"word\">like</span> \n          &#9733;\n        </span>\n      </div>\n\n      <div class=\"content\">\n        <h2>"
    + alias4(((helper = (helper = helpers.Title || (depth0 != null ? depth0.Title : depth0)) != null ? helper : alias2),(typeof helper === alias3 ? helper.call(alias1,{"name":"Title","hash":{},"data":data}) : helper)))
    + "</h2>\n        <h4>"
    + alias4(((helper = (helper = helpers.Year || (depth0 != null ? depth0.Year : depth0)) != null ? helper : alias2),(typeof helper === alias3 ? helper.call(alias1,{"name":"Year","hash":{},"data":data}) : helper)))
    + "</h4>\n      </div>\n\n      <div class=\"content\">\n        <span class=\"right\">500 stars</span>\n        by DT\n      </div>\n\n    </div>";
},"useData":true});
})();
