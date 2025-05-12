// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GasPredictor {
    struct Prediction {
        uint256 timestamp;
        uint256 predictedGasPrice;
    }

    mapping(address => Prediction[]) public userPredictions;

    event PredictionSubmitted(address indexed user, uint256 gasPrice, uint256 timestamp);

    // 提交一筆預測
    function submitPrediction(uint256 _gasPrice) public {
        userPredictions[msg.sender].push(Prediction({
            timestamp: block.timestamp,
            predictedGasPrice: _gasPrice
        }));
        emit PredictionSubmitted(msg.sender, _gasPrice, block.timestamp);
    }

    // 查詢自己的預測紀錄
    function getMyPredictions() public view returns (Prediction[] memory) {
        return userPredictions[msg.sender];
    }
}
