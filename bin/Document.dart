part of edi;

abstract class Document {

    /**
     * Sets the InterchangeEnvelope of the <code>X12Document</code>. 
     * 
     * X12Document only contains 1 <code>InterchangeEnvelope</code>. 
     */
    Document setInterchangeEnvelope(Interchange interchange);

    /**
     * Returns the <code>InterchangeEnvelope</code> of the EDI document.
     */
    Interchange getInterchangeEnvelope();

    /**
     * Sets the document element separator
     */
    void setElementSeparator(String elementSeparator);

    /**
     * Gets the document element separator
     * 
     * element separator
     */
    String getElementSeparator();

    /**
     * Sets the document segment separator
     * 
     * segment separator
     */
    String getSegmentSeparator();

    /**
     * Sets the document segment separator
     * 
     * @param segmentSeparator
     */
    void setSegmentSeparator(String segmentSeparator);

    /**
     * Gets the document sub-element separator
     * return sub-element separator
     */
    String getSubElementSeparator();

    /**
     * Sets the document sub-element separator
     * 
     * param subElementSeparator
     */
    void setSubElementSeparator(String subElementSeparator);

    /**
     * Use getSegments instead
     */
    List<Segment> getSegment(String tag);
    
    /**
     * Returns List of Segments of provided tag name
     */
    List<Segment> getSegments(String tag);

    /**
     * Gets the document release character
     */
    String getReleaseCharacter();
    
    /**
     * Sets the document release character
     */
    void setReleaseCharacter(String releaseCharacter);
    
    /**
     * Shallow copy itself without any relationship
     */
    Document copy();
    
}