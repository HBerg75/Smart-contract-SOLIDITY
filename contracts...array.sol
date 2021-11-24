// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;
// storage = declarer en dehors des fonctions. stocker le tableau dans le blockchain 'persistant'
// memory = dans une fonctions n'est pas stocker dans la blockchain
contract Arrays{


    uint[] nombre;

    function addValue(uint _valeur) public {
        nombre.push(_valeur);
    }


    function updateValue(uint _valeur, uint _index) public {
        nombre[_index] = _valeur;
    }

    function deleteValue(uint _index) public {
        delete nombre[_index];
    }

        function getValue(uint _index) public view returns(uint) {
       return nombre[_index];
    }

 }

