part of edi;

class Field extends Composite {

  Segment segment;
  String value;
  
  Field([Field orig, String value]) {
    if(orig != null)
      this.value = orig.value;
    else
      this.value = value;
  }
  
  Composite setSegment(Segment segment) {
    this.segment = segment;
    return this;
  }

  Segment getSegment() {
    return segment;
  }


  String getValue() {
      return value;
  }
  
  void setValue(String value) {
      this.value = value;
  }
  /**
   * Get 1st value.
   */
  List<String> getValues() {
     return [value];
  }
  /**
   * Set to 1st value
   */
  void setValues(List<String> values) {
      this.value = values[0];
  }
  /**
   * Is this field a composite
   */
  bool isComposite() {
    return false;
  }
 
  Composite addField(Field field) {
    return this;
  }
  
  Field copy() {
      return new Field(this);
  }
}