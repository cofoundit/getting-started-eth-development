pragma solidity 0.4.21;


contract Billboard {
  address public charity;
  string public text = 'Your ad goes here';
  uint256 public currentTextValue;

  function Billboard(address _charity) public {
    charity = _charity;
  }

  function setText(string _text) public payable {
    require(msg.value > currentTextValue);
    text = _text;
    currentTextValue = msg.value;
  }

  function withdraw() public {
    require(msg.sender == charity);
    charity.transfer(address(this).balance);
  }
}
