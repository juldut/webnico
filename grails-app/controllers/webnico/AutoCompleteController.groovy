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
        // log.error(arrNamaCust as JSON)
        render arrNamaCust as JSON    	
    }

    def contohTwoParams() {
        String strHdsj = params.hdsj?.toString()
        def rowHdsj = TableHeaderSuratJalan.findByNomorHeaderSuratJalan(strHdsj)
        String strHdso = rowHdsj?.nomorHeaderSalesOrder


        def sqlStr = """
            select new map(
                idBarang as id, 
                namaBarang as value
                
            )
            from ${TableDetailSalesOrder.name} where nomorHeaderSalesOrder = :paramHdso
        """
        def arrBarang = TableDetailSalesOrder.executeQuery(sqlStr, [paramHdso: strHdso])

        // log.error("hd so = " + strHdso)

        render arrBarang as JSON
    }
}
