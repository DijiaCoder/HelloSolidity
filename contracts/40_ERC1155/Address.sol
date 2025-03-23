// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @dev 地址操作相关的库
 */
library Address {
    /**
     * @dev 判断一个地址是否为合约地址
     * @param account 要检查的地址
     * @return 返回一个布尔值，表示该地址是否为合约地址
     */
    function isContract(address account) internal view returns (bool) {
        // 检查地址的代码长度
        uint256 size;
        assembly {
            size := extcodesize(account)
        }
        return size > 0;
    }
}