package grails

import grails.gorm.services.Service

@Service(Contacs)
interface ContacsService {

    Contacs get(Serializable id)

    List<Contacs> list(Map args)

    Long count()

    void delete(Serializable id)

    Contacs save(Contacs contacs)

}