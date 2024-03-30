# Web3
Web3：它是以太坊区块链 Ethereum blockchain 和你的智能合约 Smart Contracts 之间的连接。
以太坊 Ethereum：一个去中心化的开源区块链 blockchain，允许用户通过创建智能合约 creating smart contracts 与网络进行交互。它的原生加密货币是以太币。就市值而言，以太币是仅次于比特币的第二大最有价值的加密货币。它由 Vitalik Buterin 于 2013 年创建。
## 智能合约
智能合约 Smart Contracts ：它们是存储在区块链上的计算机程序 computer programs ，在满足预定条件时运行。智能合约是用 Solidity 语言编写的。

## Solidity

## 变量数据存储和作用域
 - storage 存在链上，默认保存在这里
 - memort 存在内存中 一般用于函数里的参数和临时变量，如果数据长度不固定必须用memory
 - calldata 不能修改，不上链

## 全局变量
- blockhash(uint blockNumber): (bytes32) 给定区块的哈希值 – 只适用于256最近区块, 不包含当前区块。
- block.coinbase: (address payable) 当前区块矿工的地址
- block.gaslimit: (uint) 当前区块的gaslimit
- block.number: (uint) 当前区块的number
- block.timestamp: (uint) 当前区块的时间戳，为unix纪元以来的秒
- gasleft(): (uint256) 剩余 gas
- msg.data: (bytes calldata) 完整call data
- msg.sender: (address payable) 消息发送者 (当前 caller)
- msg.sig: (bytes4) calldata的前四个字节 (function identifier)
- msg.value: (uint) 当前交易发送的 wei 值
- block.blobbasefee: (uint) 当前区块的blob基础费用。这是Cancun升级新增的全局变量。
- blobhash(uint index): (bytes32) 返回跟当前交易关联的第 index 个blob的版本化哈希（第一个字节为版本号，当前为0x01，后面接KZG承诺的SHA256哈希的最后31个字节）。若当前交易不包含 blob，则返回空字节。这是Cancun升级新增的全局变量。


## web3 钱包
Web3钱包是一种可以与以太坊区块链交互的JavaScript库。它可以让你创建和管理以太坊账户，发送和接收以太币和代币，以及与智能合约交互。

## Meatamask (小狐狸)

Metamask是一种Web3钱包，它是一个浏览器插件，可以让你直接在浏览器中与以太坊区块链交互。Metamask可以管理你的以太坊账户，发送和接收以太币和代币，以及与智能合约交互。此外，Metamask还提供了一个用户友好的界面，使得与以太坊区块链的交互变得更加简单。

在metamask中，私钥就是数据，浏览器扩展是使用它的方式

# Defi
去中心化金融，利用智能合约来自动化金融产品
[介绍链接](https://www.bitcoin.com/zh/get-started/what-is-defi-decentralized-finance/)

### DApp

代表去中心化应用程序 Decentralized App 。它们是在去中心化网络或区块链上运行其后端代码（主要用 Solidity 编写的智能合约）的应用程序。

可以便捷的全世界汇款，借贷，常见的Dapp有：

- Aave
- Uniswap