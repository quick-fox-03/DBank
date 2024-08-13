import Debug "mo:base/Debug";
import Nat "mo:base/Nat";
import Time "mo:base/Time";
import Int "mo:base/Int";
import Float "mo:base/Float";
//canister
actor DBank {
  //var is a mutable container that stores data
  stable  var currentValue: Float = 300.0;
  //assignment op
  currentValue:= 300;
  stable var startTime : Int = Time.now();
  startTime:=Time.now();
  //let is same as var but immutable
  // let id = 2343583759042; 

  //prints out to console running the canister,
  // and debug_show converts values such as Nat [0-inf) to Text for the print
  // Debug.print(debug_show(currentValue));
  // Debug.print(debug_show(id));

  public func topUp(amount: Float){
    currentValue+=amount;
    Debug.print(debug_show(currentValue));
  };

  public func withdraw(amount: Float){
    let tempValue: Float = currentValue-amount;
    if(tempValue>=0.0){
      currentValue-=amount;
      Debug.print(debug_show(currentValue));
    }else{
      Debug.print("Amount is greater than currentValue, leads to negative currentValue.");
    }
  };
  public func checkBalance(): async Float{
    return currentValue;
  };
  

  
  public func compound(){
    let currentTime = Time.now();
    let timeElapsed = (currentTime-startTime)/1000000000;
    currentValue := currentValue * (1 + (0.05/10) ** Float.fromInt(timeElapsed));
    startTime := currentTime;
  }

  // topUp();
  // topUp();
}
