pragma solidity ^0.4.11;

contract Example4 {
    struct personalInfo {
        uint32 birthday; 
        bool isMale;
    }

    struct student {
        uint8[2] scores; 
        uint8 team;
        personalInfo pi;
    } 

    mapping (address => student) students;
    student example = student([92, 97], 3, personalInfo(20170101, true));

    function getWholeInfo() returns (student){
        return students[msg.sender];
    } 

    function getTotalScore() returns (uint8, uint8){
        return (students[msg.sender].scores[0], students[msg.sender].scores[1]);
    } 

    function joinTeam(uint8 input) {
        students[msg.sender].team = input;
    }

    function setPI(personalInfo input) {
        students[msg.sender].pi = input;
    }

    function setBirthday(uint32 input) {
        student local = students[msg.sender];
        local.pi.birthday = input;
    }
}