pragma solidity ^0.5.0;

contract  DataBackupID{
   
   uint twostepInput; 
   bool twoStepVer;
   uint Date;
   string Data_size;
   string Backup_length_time;
   bool SoftwareNeedstobeUpdated;
   
   
  
   
   function SetUserInfo ( uint _Date, string memory _Data_size,string memory _Backup_length_time) public {
       Date = _Date;
       Data_size = _Data_size;
       Backup_length_time = _Backup_length_time;
      // 1= 1 Month - 2 = 2 month   (months lesft before backup expires)
       if (Date >= 6 ){SoftwareNeedstobeUpdated = false;
          }
          else SoftwareNeedstobeUpdated = true;
     }
    // Two stepverification / less than if token returns less than 2= authentication is satisfied, elso NOT  
    function twoStepVerif ( uint _twostepInput) public {
    twostepInput = _twostepInput;
    
    if (twostepInput >=2 ) {twoStepVer = false;
    
    }
    else (twoStepVer = true);
    
      
   }
   
   function GetUserInfo() public view returns (uint, string memory,string memory, bool, bool) {
return (Date, Data_size, Backup_length_time, SoftwareNeedstobeUpdated, twoStepVer);
   }
    
}