// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30 ;
 contract MyContract {
    // string value;
    // constructor() {
    //     value = "Hello World";
    //  }
    //  function setvalue(string memory _value) public {
    //     value = _value;
    //  }
    //  enum Status { Waiting, InProgress, Done}
    //  Status public status;
    //  function changeStatus() public {
    //     status = Status.Done ;
    //  }
    //  function getStatus() public view returns (bool)  {
    //     return status == Status.Waiting ;
    //  }





       //ONLY OWNER
    //     address owner;
    //     constructor ()   {
    //         owner = msg.sender;
    //     }
    //     modifier onlyOwner{
    //         require(msg.sender==owner,"Only the owner can call this method");
    //         _;
    //     }

    //     mapping (uint256 => Person) public people;
    //     uint public count = 0;
    //    struct Person{
    //         uint age;
    //         string name;
    //     }
    //     function addperson(uint _age , string memory _name) public onlyOwner {
    //         people[count] = Person(_age,_name);
    //         count+=1 ;
    //     }





        // ONLY BEFORE CERTAIN TIME
    //     address owner;
    
    //     mapping (uint256 => Person) public people;
    //     uint256 openingTime = 1752437790;
    //     modifier onlyWhileOpen{
    //         require((block.timestamp > openingTime ),"Can only be called while the store is open"); 
    //         _;
    //     }
    //     uint public count = 0;
    //    struct Person{
    //         uint age;
    //         string name;
    //     }
    //     function addperson(uint _age , string memory _name) public onlyWhileOpen {
    //         people[count] = Person(_age,_name);
    //         count+=1 ;
    //     }


            // FUNCTIONS TO BUY ETHER(PSEUDO CODE) AND EVENT's
                // mapping (address => uint256 ) public balance;
                // address payable wallet;
                // event Purchase ( address indexed _buyer, uint _amount );
                // constructor(address payable _wallet )  {
                //     wallet = _wallet;
                // }

                // function buyToken() public payable {
                //     balance[msg.sender] += 1;
                //     wallet.transfer(msg.value);
                //     emit Purchase ( msg.sender, 1 );
                // }


                    

                
                address payable wallet;
                address public token;
                constructor(address payable _wallet, address _token )  {
                    wallet = _wallet;
                    token = _token;
                }

                function buyToken() public payable {
                    ERC20Token  _token = ERC20Token(address(token));
                    _token.mint();
                    wallet.transfer(msg.value);
                   
                }
 }
 contract ERC20Token{
    string public name;
    mapping (address => uint256 ) public balance;

    function mint() public{
        balance[msg.sender]++;
    }
 }
