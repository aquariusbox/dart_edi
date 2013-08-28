part of edi;

abstract class Transaction {

    Transaction setGroupEnvelope(GroupEnvelope group);

    GroupEnvelope getGroupEnvelope();

    Transaction detach();

    Transaction addSegment(Segment segment, [int position]);
    
    Transaction addSegments(int position, List<Segment> segments);

    Transaction removeSegment(Segment segment);

    /**
     * Use getSegments instead
     */
    List<Segment> getSegements();
    
    /**
     * Get list of segment
     */
    List<Segment> getSegments([String tag]);

    Segment getSegment(int position);
    /**
     * Gets Transaction field by position. The position is starting from 1.
     */
    Composite getField(int position);

    String getType();

    void setType(String type);

    String getControlNumber();

    void setControlNumber(String controlNum);

    List<Composite> getFields();
    
    /**
     * Shallow copy without relationship.
     */
    Transaction copy();

    int getSegmentPosition(Segment segment);

}