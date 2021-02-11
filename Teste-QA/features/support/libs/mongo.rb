require 'mongo'

#criando log do mongoDB e jogando dentro da pasta logs
Mongo::Logger.logger = Logger.new("./logs/mongo.log")

class MongoDB
    def remove_user(email)
      #Criando conexão com o banco mongoDB
        client = Mongo::Client.new('mongodb://rocklov-db:27017/rocklov')
        users = client[:users]
        #Deletando o e-mail, para limpar a base
        users.delete_many({email:email})  
    end
end

