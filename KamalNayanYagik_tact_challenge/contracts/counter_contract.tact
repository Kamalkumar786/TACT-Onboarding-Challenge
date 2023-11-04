import "@stdlib/deploy" ;
contract CounterContract with Deployable {
    id: Int as uint32;
    val: Int as uint32;  
    init(id: Int){
        self.id = id;
        self.val = 0;
    }

    // increases the value of
    receive("increment") {
        self.val = self.val +1;
    }
    // reads the current value of val
    get fun counter(): Int {
        return self.val;
    }
    get fun id(): Int {
        return self.id;
    }
}