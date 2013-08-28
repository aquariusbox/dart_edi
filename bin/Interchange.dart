part of edi;

abstract class Interchange {

  Interchange setDocument(Document document);

  Document getDocument();

  Interchange addGroupEnvelope(GroupEnvelope groupEnvelope);

  Interchange removeGroupEnvelope(GroupEnvelope groupEnvelope);

  List<GroupEnvelope> getGroups();

  Composite getField(int position);

  String getSenderQualifier();

  void setSenderQualifier(String qualifier);

  String getSenderId();

  void setSenderId(String id);

  String getReceiverQualifier();

  void setReceiverQualifier(String qualifier);

  String getReceiverId();

  void setReceiverId(String id);

  String getVersion();

  void setVersion(String version);

  String getControlNumber();

  void setControlNumber(String controlNum);

  List<Segment> getSegment(String tag);

  List<Composite> getFields();
  
  Interchange copy();
}