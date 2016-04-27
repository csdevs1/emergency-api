json.states @states do |state|
    json.id state.id
    json.name state.name
    json.image state.image
    services = Service.where(:state_id => state.id)
    json.services services do |service|
        json.id service.id
        json.name service.name
        json.category service.category
        telephones = Telephone.where(:service_id => service.id)
        json.telephones telephones do |telephone|
            json.number telephone.number
        end        
    end
end