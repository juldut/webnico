package webnico

import grails.converters.JSON;

class AutoCompleteController {

    def index() { }

    def masterCustomer() {
        def sqlStr = """
            select new map(
                id as id, 
                namaCustomer as value, 
                alamatCustomer as alamatCust
            )
            from ${TableMasterCustomer.name} where namaCustomer like concat('%', :paramNama, '%')
        """
        def arrNamaCust = TableMasterCustomer.executeQuery(sqlStr, [paramNama: params.term?.toString()])
        log.error(arrNamaCust as JSON)
        render arrNamaCust as JSON    	
    }
}
