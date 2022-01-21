/*
 * Available context bindings:
 *   COLUMNS     List<DataColumn>
 *   ROWS        Iterable<DataRow>
 *   OUT         { append() }
 *   FORMATTER   { format(row, col); formatValue(Object, col) }
 *   TRANSPOSED  Boolean
 * plus ALL_COLUMNS, TABLE, DIALECT
 *
 * where:
 *   DataRow     { rowNumber(); first(); last(); data(): List<Object>; value(column): Object }
 *   DataColumn  { columnNumber(), name() }
 */

NEWLINE   = System.getProperty("line.separator")

ROWS.each { row ->
  COLUMNS.eachWithIndex { value, idx ->
    def str = FORMATTER.format(row, value)
    OUT.append("\"$str\",")
       .append(NEWLINE)
  }
}