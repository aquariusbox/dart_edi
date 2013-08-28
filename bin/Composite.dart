part of edi;

class Composite {
  /**
   * Segment this composite belong to.
   */
  Segment segment;
  /**
   * Fields within this composite field
   */
  List<Field> fields = new List<Field>();
  
  Composite([Composite orig]) {
    if(orig != null){
      for (Field field in orig.fields) {
        this.fields.add(field.copy());
      }
    }
  }
  /**
   * Set parent segment
   */
  Composite setSegment(Segment segment) {
    this.segment = segment;
    for (Field field in fields) {
      field.setSegment(segment);
    }
    return this;
  }

  bool isComposite() {
    return true;
  }

  Composite addField(Field field) {
    fields.add(field);
    return this;
  }

  Field getField(int position) {
    if (position-1 < 0 || position-1 >= fields.length) {
      return null;
    }
    return fields[position-1];
  }

  /**
   * Get 1st field value
   */
  String getValue() {
     Field field = fields[0];
     if (field != null) {
       return field.getValue();
     }
     return null;
  }

  /**
   * Set 1st field value
   */
  void setValue(String value) {
        Field field = fields[0];
        if (field != null) {
            field.setValue(value);
        }
  }
  /**
   * Retrun all fields's value.
   */
  List<String> getValues() {
    List<String> values = [];
    for (Field field in fields){
      values.add(field.getValue());
    }
    return values;
  }
  /**
   * Set fields's value
   */
  void setValues(List<String> values) {
      if (fields.length == values.length) {
          for (int i = 0; i < values.length; i++) {
              fields[i].setValue(values[i]);
            }
      }
  }
  /**
   * Copy this composite
   */
  Composite copy() {
    return new Composite(this);
  }
}