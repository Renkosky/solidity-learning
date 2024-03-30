// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract ERC20 {
    //记录地址的持币数量
    mapping(address => uint256) _balances;
    mapping(address => mapping(address => uint256)) _allowances;
    string public name;
    string public symbol;
    uint256 public _totalSupply;
    uint8 public decimals;
    constructor(
        string memory _name,
        string memory _symbol,
        uint256 _totalSupply,
        uint8 _decimals
    ) {
        _balances[msg.sender] = _totalSupply; // 给转账地址一些初始代币
        _totalSupply = _totalSupply;
        name = _name;
        symbol = _symbol;
        decimals = _decimals;
    }

    event Transfer(address indexed from, address indexed to, uint256 value);
    /**
     * @dev 释放条件：当 `value` 单位的货币从账户 (`owner`) 授权给另一账户 (`spender`)时.
     */
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );

    // 定义_transfer函数，执行转账逻辑
    function transfer(
        address to,
        uint256 amount
    ) external returns (bool success) {
        require(_balances[msg.sender] >= amount, "You dont have enought token");
        _balances[msg.sender] -= amount; // from地址减去转账数量
        _balances[to] += amount; // to地址加上转账数量

        // 释放事件
        emit Transfer(msg.sender, to, amount);
        return true;
    }

    /**
     * @dev 调用者账户给`spender`账户授权 `amount`数量代币。
     *
     * 如果成功，返回 `true`.
     *
     * 释放 {Approval} 事件.
     */
    function approve(
        address owner,
        address spender,
        uint256 amount
    ) external returns (bool success) {
        _allowances[owner][spender] = amount;
        // 释放事件
        emit Approval(msg.sender, spender, amount);
        return true;
    }
    //返回`account`账户的代币数量。
    function balanceOf(address account) external view returns (uint256) {
        return _balances[account];
    }
    //返回`owner`账户授权给`spender`账户的代币数量。
    function allowance(
        address owner,
        address spender
    ) external view returns (uint256) {
        return _allowances[owner][spender];
    }
    function totalSupply() external view returns (uint256) {
        return _totalSupply;
    }
}
