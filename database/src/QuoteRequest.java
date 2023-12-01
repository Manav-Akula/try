public class QuoteRequest {
    protected int RequestID;
    protected int ClientID;   
    protected String RequestDate;
    protected String Status;
    protected String Note;
    protected String NumberOfTrees;
    protected String AvgSize;
    protected double AvgHeight;
    protected String HeightOfTallestTree;
    protected String Location;
    protected double ProximityToHouse;

    // Constructors
    public QuoteRequest() {
    }

    public QuoteRequest(String note) {
        this.Note = note;
    }

   
    public QuoteRequest (int clientID, String requestDate, String status, String note, String NumberOfTrees, String Avgsize, double Avgheight, String HeightOfTallestTree, String location, double proximityToHouse) {
    	this.ClientID = clientID;
        this.RequestDate = requestDate;
        this.Status = status;
        this.Note = note;
        this.NumberOfTrees = NumberOfTrees;
        this.AvgSize = Avgsize;
        this.AvgHeight = Avgheight;
        this.HeightOfTallestTree = HeightOfTallestTree;
        this.Location = location;
        this.ProximityToHouse = proximityToHouse;
    }
    

    // Getter and setter methods
    public int getRequestID() {
		return RequestID;
	}
	public void setRequestID(int requestID) {
		RequestID = requestID;
	}
	public int getClientID() {
		return ClientID;
	}
	public void setClientID(int clientID) {
		ClientID = clientID;
	}
	public String getRequestDate() {
		return RequestDate;
	}
	public void setRequestDate(String requestDate) {
		RequestDate = requestDate;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	public String getNote() {
		return Note;
	}
	public void setNote(String note) {
		Note = note;
	}
	public String getNumberOfTrees() {
		return NumberOfTrees;
	}
	public void setNumberOfTrees(String numberOfTrees) {
		NumberOfTrees = numberOfTrees;
	}
	public String getAvgSize() {
		return AvgSize;
	}
	public void setAvgSize(String avgSize) {
		AvgSize = avgSize;
	}
	public double getAvgHeight() {
		return AvgHeight;
	}
	public void setAvgHeight(double avgHeight) {
		AvgHeight = avgHeight;
	}
	public String getHeightOfTallestTree() {
		return HeightOfTallestTree;
	}
	public void setHeightOfTallestTree(String heightOfTallestTree) {
		HeightOfTallestTree = heightOfTallestTree;
	}
	public String getLocation() {
		return Location;
	}
	public void setLocation(String location) {
		Location = location;
	}
	public double getProximityToHouse() {
		return ProximityToHouse;
	}
	public void setProximityToHouse(double proximityToHouse) {
		ProximityToHouse = proximityToHouse;
	}
}
