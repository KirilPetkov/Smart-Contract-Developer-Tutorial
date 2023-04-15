// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Test {
    uint x;
    // This function is called for all messages sent to
    // this contract (there is no other function).
    // Sending Ether to this contract will cause an exception,
    // because the fallback function does not have the 'payable' modifier.
    
    fallback() external { 
        x = 1; 
    }
}

contract TestPayable {
    uint x; 
    uint y;
    // This function is called for all messages sent to
    // this contract, except plain Ether transfers
    // (there is no other function except the receive function).
    // Any call with non-empty calldata to this contract will execute
    // the fallback function  (even if Ether is sent along with the call).

    fallback() external payable {
        x = 1;
        y = msg.value;
    }
}

contract Caller {
    function callTest(Test test) public returns(bool) {
        (bool success,) = address(test).call(abi.encodeWithSignature("nonExistingFunction()"));
        require(success);
        // results in test.x becoming == 1.
        // address(test) will not allow to call ''send'' directly, since ''test'' has no payable
        // fallback function.
        // It has no be converted to the '' address payable '' type to even allow calling ''send'' on it.

        address payable TestPayable = payable(address(test));

        // If someone sends Ether to that contract,
        // the transfer will fail, i.e. this returns false here.
        return TestPayable.send(2 ether);
    }

    function callTestPayable(TestPayable test) public returns(bool) {
        (bool success,) = address(test).call(abi.encodeWithSignature("nonExistingFunction()"));
        require(success);
        // results in test.x becoming == 1 and test.y becoming 0.
        // If someone sends Ether to that contract, it takes more gass than is available with a
        // simpe ''send'' or ''transfer''. Because of that, we have to use a low-level call.

        (success,) = address(test).call{value:2 ether}("");
        require(success);

        // results in test. becoming == 2 and test.y becoming 2 ether.
        return true;
    }
}