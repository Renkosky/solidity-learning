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