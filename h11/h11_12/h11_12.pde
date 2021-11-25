int[] mijnArray = {10,9,8,7};
int [] mijnCopy = new int[2];

void setup(){
  for(int i = 0; i < mijnCopy.length; i++){
    mijnCopy[i] = mijnArray[i];
    
  }
  
  mijnCopy[1] = 5;
  println(mijnArray);
  println(mijnCopy);
  
  }
