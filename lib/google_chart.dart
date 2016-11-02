// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `google_chart`.
@HtmlImport('google_chart_nodart.html')
library polymer_elements.lib.src.google_chart.google_chart;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';
import 'iron_request.dart';
import 'google_chart_loader.dart';

/// `google-chart` encapsulates Google Charts as a web component, allowing you to easily visualize
/// data. From simple line charts to complex hierarchical tree maps, the chart element provides a
/// number of ready-to-use chart types.
///
///     <google-chart
///       type='pie'
///       options='{"title": "Distribution of days in 2001Q1"}'
///       cols='[{"label":"Month", "type":"string"}, {"label":"Days", "type":"number"}]'
///       rows='[["Jan", 31],["Feb", 28],["Mar", 31]]'>
///     </google-chart>
///
/// Note: if you're passing JSON as attributes, single quotes are necessary to be valid JSON.
/// See https://www.polymer-project.org/1.0/docs/devguide/properties#configuring-object-and-array-properties.
///
/// Height and width are specified as style attributes:
///
///     google-chart {
///       height: 300px;
///       width: 50em;
///     }
///
/// Data can be provided in one of three ways:
///
/// - Via the `cols` and `rows` attributes:
///
///       cols='[{"label":"Mth", "type":"string"}, {"label":"Days", "type":"number"}]'
///       rows='[["Jan", 31],["Feb", 28],["Mar", 31]]'
///
/// - Via the `data` attribute, passing in the data directly:
///
///       data='[["Month", "Days"], ["Jan", 31], ["Feb", 28], ["Mar", 31]]'
///
/// - Via the `data` attribute, passing in the URL to a resource containing the
///   data, in JSON format:
///
///       data='http://example.com/chart-data.json'
///
/// - Via the `data` attribute, passing in a Google DataTable object:
///
///       data='{{dataTable}}'
///
/// - Via the `view` attribute, passing in a Google DataView object:
///
///       view='{{dataView}}'
///
/// You can display the charts in locales other than "en" by setting the `lang` attribute
/// on the `html` tag of your document.
///
///     <html lang="ja">
@CustomElementProxy('google-chart')
class GoogleChart extends HtmlElement with CustomElementProxyMixin, PolymerBase {
  GoogleChart.created() : super.created();
  factory GoogleChart() => new Element.tag('google-chart');

  /// Sets the data columns for this object.
  ///
  /// When specifying data with `cols` you must also specify `rows`, and
  /// not specify `data`.
  ///
  /// Example:
  /// <pre>[{label: "Categories", type: "string"},
  ///  {label: "Value", type: "number"}]</pre>
  /// See <a href="https://google-developers.appspot.com/chart/interactive/docs/reference#DataTable_addColumn">Google Visualization API reference (addColumn)</a>
  /// for column definition format.
  get cols => jsElement[r'cols'];
  set cols(value) { jsElement[r'cols'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// Sets the entire dataset for this object.
  /// Can be used to provide the data directly, or to provide a URL from
  /// which to request the data.
  ///
  /// The data format can be a two-dimensional array or the DataTable format
  /// expected by Google Charts.
  /// See <a href="https://google-developers.appspot.com/chart/interactive/docs/reference#DataTable">Google Visualization API reference (DataTable constructor)</a>
  /// for data table format details.
  ///
  /// When specifying data with `data` you must not specify `cols` or `rows`.
  ///
  /// Example:
  /// <pre>[["Categories", "Value"],
  ///  ["Category 1", 1.0],
  ///  ["Category 2", 1.1]]</pre>
  get data => jsElement[r'data'];
  set data(value) { jsElement[r'data'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// Whether the chart is currently rendered.
  bool get drawn => jsElement[r'drawn'];
  set drawn(bool value) { jsElement[r'drawn'] = value; }

  /// Enumerates the chart events that should be fired.
  ///
  /// Charts support a variety of events. By default, this element only
  /// fires on `ready` and `select`. If you would like to be notified of
  /// other chart events, use this property to list them.
  /// Events `ready` and `select` are always fired.
  /// Changes to this property are _not_ observed. Events are attached only
  /// at chart construction time.
  List get events => jsElement[r'events'];
  set events(List value) { jsElement[r'events'] = (value != null && value is! JsArray) ? new JsObject.jsify(value) : value;}

  /// Returns the chart serialized as an image URI.
  ///
  /// Call this after the chart is drawn (google-chart-render event).
  get imageURI => jsElement[r'imageURI'];

  /// Sets the options for the chart.
  ///
  /// Example:
  /// <pre>{
  ///   title: "Chart title goes here",
  ///   hAxis: {title: "Categories"},
  ///   vAxis: {title: "Values", minValue: 0, maxValue: 2},
  ///   legend: "none"
  /// };</pre>
  /// See <a href="https://google-developers.appspot.com/chart/interactive/docs/gallery">Google Visualization API reference (Chart Gallery)</a>
  /// for the options available to each chart type.
  ///
  /// This property is observed via a deep object observer.
  /// If you would like to make changes to a sub-property, be sure to use the
  /// Polymer method `set`: `googleChart.set('options.vAxis.logScale', true)`
  /// (Note: Missing parent properties are not automatically created.)
  get options => jsElement[r'options'];
  set options(value) { jsElement[r'options'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// Sets the data rows for this object.
  ///
  /// When specifying data with `rows` you must also specify `cols`, and
  /// not specify `data`.
  ///
  /// Example:
  /// <pre>[["Category 1", 1.0],
  ///  ["Category 2", 1.1]]</pre>
  /// See <a href="https://google-developers.appspot.com/chart/interactive/docs/reference#addrow">Google Visualization API reference (addRow)</a>
  /// for row format.
  get rows => jsElement[r'rows'];
  set rows(value) { jsElement[r'rows'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// Selected datapoint(s) in the chart.
  ///
  /// An array of objects, each with a numeric row and/or column property.
  /// `row` and `column` are the zero-based row or column number of an item
  /// in the data table to select.
  ///
  /// To select a whole column, set row to null;
  /// to select a whole row, set column to null.
  ///
  /// Example:
  /// <pre>
  ///   [{row:0,column:1}, {row:1, column:null}]
  /// </pre>
  get selection => jsElement[r'selection'];
  set selection(value) { jsElement[r'selection'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// Sets the type of the chart.
  ///
  /// Should be one of:
  /// - `area`, `bar`, `bubble`, `candlestick`, `column`, `combo`, `geo`,
  ///   `histogram`, `line`, `pie`, `scatter`, `stepped-area`, `treemap`
  ///
  /// See <a href="https://google-developers.appspot.com/chart/interactive/docs/gallery">Google Visualization API reference (Chart Gallery)</a>
  /// for details.
  String get type => jsElement[r'type'];
  set type(String value) { jsElement[r'type'] = value; }

  /// Sets the entire dataset for this object to a Google DataView.
  ///
  /// See <a href="https://google-developers.appspot.com/chart/interactive/docs/reference#dataview-class">Google Visualization API reference (DataView)</a>
  /// for details.
  ///
  /// When specifying data with `view` you must not specify `data`, `cols` or `rows`.
  get view => jsElement[r'view'];
  set view(value) { jsElement[r'view'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// Redraws the chart.
  ///
  /// Called automatically when data/type/selection attributes change.
  /// Call manually to handle view updates, page resizes, etc.
  redraw() =>
      jsElement.callMethod('redraw', []);
}
