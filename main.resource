*** Settings ***
Library    RequestsLibrary
Library    String
Library    Collections


Resource    hooks.resource
Resource    kwsCenario00_MassaDados.robot
Resource    kwsCenario01_PostDiretoria.robot
Resource    kwsCenario02_DiretoriaObrigatoria.robot
Resource    kwsCenario03_DiretoriaNumeros.robot
Resource    kwsCenario04_DiretoriaMaiusculas.robot
Resource    kwsCenario05_DiretoriaMinusculas.robot
Resource    kwsCenario06_DiretoriaCaracteresEspeciais.robot
Resource    kwsCenario07_DiretoriaMaiusculaMinuscula&.robot
Resource    kwsCenario08_DiretoriaMaior50Caracteres.robot
Resource    kwsCenario09_BuscarDiretoria.robot
Resource    kwsCenario10_BuscarDiretoriaId.robot
Resource    kwsCenario11_ContarDiretoria.robot
Resource    kwsCenario12_EditarDiretoria.robot