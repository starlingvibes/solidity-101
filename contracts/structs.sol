pragma solidity 0.5.1;

// contract MyContract {
//     Person[] public people;

//     uint public peopleCount;

//     struct Person {
//         string _firstName;
//         string _lastName;
//     }

//     function addPerson(string memory _firstName, string memory _lastName) public {
//         people.push(Person(_firstName, _lastName));
//         peopleCount += 1;
//     }
// }

contract MyContract {
    uint public peopleCount = 0;
    mapping(uint => Person) public people;

    address owner;

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    struct Person {
        uint _id;
        string _firstName;
        string _lastName;
    }

    constructor() public {
        owner = msg.sender;
    }

    function addPerson(string memory _firstName, string memory _lastName) public onlyOwner {
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }

    function incrementCount() internal {
        peopleCount += 1;
    }
}