// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract HelloWorld {
    /**
     * @dev Prints Hello World string
     */
    address test = 0x7A58c0Be72BE218B41C608b7Fe7C5bB630736C71;
    address payable public test2 = payable(test); // payable address，可以转账、查余额
    bool public booltest = true;
    int public numbertest = 2 ** 2;
    bytes1 public a = "2";
    function print() public pure returns (string memory) {
        return "web3";
    }
    function testpure() external returns (bool) {
        booltest = false;
        return booltest;
    }
    function minus() internal {
        numbertest = numbertest - 1;
    }
    function minusCall() external {
        minus();
    }
    function minusPayable() external payable returns (uint256 balance) {
        minus();
        balance = address(this).balance;
    }
    function returnNamed()
        public
        pure
        returns (uint256 _number, bool _bool, uint256[3] memory _array)
    {
        _number = 1;
        _bool = true;
        _array = [uint256(3), 2, 1];
        // return(1, true, [uint256(1),2,5]);
    }
    function global()
        external
        view
        returns (address, uint, bytes memory, string memory log)
    {
        address sender = msg.sender;
        uint blockNum = block.number;
        bytes memory data = msg.data;
        return (sender, blockNum, data, "global");
    }

    struct Student {
        uint256 age;
        string name;
    }
    Student student;
    //方法1:在函数中创建一个storage的struct引用
    function initStudent1() external {
        Student storage st1 = student;
        st1.age = 2;
        st1.name = "me";
    }

    function initStudent2() external {
        student.age = 1;
        student.name = "pp";
    }
}
