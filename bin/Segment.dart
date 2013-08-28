part of edi;

abstract class Segment {
    Transaction transaction;
    
    List<Composite> fields = new List();
    
    String segmentTag;
    
    /**
     * Create a segment and provide all fields value.
     */
    Segment.fromValues(List<String> values) {
      segmentTag = values[0];
      for (int i = 0; i < values.length; i++) {
            Field field = new Field(null, values[i]);
            addField(field);
      }
    }

//  Segment.byCompositeValues(String[][] fields) {
//    segmentTag = fields[0][0];
//    for (int i = 0; i < fields.length; i++) {
//      CompositeField cField = new CompositeField();
//      for (int j = 0; j < fields[i].length; j++) {
//        Field field = new Field(fields[i][j]);
//        cField.addField(field);
//      }
//      addCompositeField(cField);
//    }
//  }

  Segment.fromSegment(Segment orig) {
    this.segmentTag = orig.segmentTag;
    for (Composite composite in orig.fields) {
            this.fields.add(composite.copy());
        }
  }

  Segment setTransaction(Transaction transaction) {
    this.transaction = transaction;
    return this;
  }

  String getSegmentTag() {
    return segmentTag;
  }

  Transaction getTransaction() {
    return transaction;
  }

  Segment addField(Field field, [int position]) {
    if(position != null)
      return addComposite(field, position);
    return addComposite(field);
  }

//  List<CompositeField> getFields() {
//    return fields;
//  }
//
//  CompositeField getField(int position) {
//      if (position < 0 || position >= fields.size()) {
//          return null;
//      }
//      return fields.get(position);
//  }
//
//  Segment detach() {
//    transaction.removeSegment(this);
//    transaction = null;
//    return this;
//  }
//
  
  /**
   * Add a composite to this segment.
   */
  Segment addComposite(Composite field, [int position]) {
    if(position != null){
       // Pad empty field (last index + 1 to position - 1)
      for(int i = fields.length ; i <= position - 1 ; i++){
        fields.add(new Field(null,"").setSegment(this));
      }
    } else{
      field.setSegment(this);
    }
    fields.add(field);
    return this;
  }
//
//  Segment copy() {
//    return new Segment(this);
//  }
//
//  Segment nextSegment() {
//      int position = transaction.getSegmentPosition(this);
//      return transaction.getSegment(position+1);
//  }
//
//  Segment previousSegment() {
//        int position = transaction.getSegmentPosition(this);
//        return transaction.getSegment(position-1);
//  }
//
//  List<Segment> nextSegments(String tagName) {
//      List<Segment> allSegments = transaction.getSegments();
//      List<Segment> subList = allSegments.subList(transaction.getSegmentPosition(this), allSegments.size());
//      List<Segment> result = new ArrayList<Segment>();
//        for (Segment segment : subList) {
//            if (segment.getSegmentTag().equals(tagName)) {
//                result.add(segment);
//            }
//        }
//        return result;
//  }
//
//    List<Segment> previousSegments(String tagName) {
//        List<Segment> allSegments = transaction.getSegments();
//        List<Segment> subList = allSegments.subList(0, transaction.getSegmentPosition(this));
//        List<Segment> result = new ArrayList<Segment>();
//        for (Segment segment : subList) {
//            if (segment.getSegmentTag().equals(tagName)) {
//                result.add(segment);
//            }
//        }
//        return result;
//    }
}