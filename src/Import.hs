{-# LANGUAGE TemplateHaskell, QuasiQuotes #-}
module Import where

import Yesod  
 
pRoutes = [parseRoutes|
	/cadastrocliente ClientR POST GET
	/update/#ClientId UpdateR PUT
	/delete/#ClientId DeleteR DELETE
	/lista ListaR GET
	/cadastroveiculo VeiculoR POST GET
	/cadastrotipoveiculo TipoVeiculoR POST GET
	/tipoveiculoupdate/#TipoVeiculoId TipoVeiUpdateR PUT
	/tipoveiculodelete/#TipoVeiculoId TipoVeiDeleteR DELETE
	/listaVeiculo ListaVeiculoR GET
	/cadastrocontrato ContratoR POST
	/cadastrovaga VagaR POST
	/cadastrovagavalor VagaValorR POST
	/cadastroevento EventoR POST
	/cadastroconveniado ConveniadoR POST
	/entrada AvulsoR POST -- pode ser entrada de veiculo também
	/cadastrofuncionario FuncionarioR POST
|]