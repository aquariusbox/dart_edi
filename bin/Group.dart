part of edi;

abstract class GroupEnvelope {

    GroupEnvelope setInterchangeEnvelope(Interchange interchangeEnvelope);

    Interchange getInterchangeEnvelope();

    Composite getField(int position);

    GroupEnvelope detach();

    GroupEnvelope addTransaction(Transaction txn);

    GroupEnvelope removeTransaction(Transaction txn);

    List<Transaction> getTransactions();

    /**
     * the functionalCode
     */
    String getFunctionalCode();

    void setFunctionalCode(String code);

    /**
     * the senderCode
     */
    String getSenderCode();

    void setSenderCode(String sender);

    /**
     * the receiverCode
     */
    String getReceiverCode();

    void setReceiverCode(String receiver);

    /**
     * the controlNumber
     */
    String getControlNumber();

    void setControlNumber(String controlNum);

    /**
     * the version
     */
    String getVersion();

    void setVersion(String version);

    /**
     * A convenience method to find segment by tag name.
     * List of segment
     */
    List<Segment> getSegment(String tag);

    List<Composite> getFields();
    
    /**
     * Shallow copy without relationship
     * 
     * copy of this instance
     */
    GroupEnvelope copy();
}