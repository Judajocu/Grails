package grails

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class ContacsServiceSpec extends Specification {

    ContacsService contacsService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Contacs(...).save(flush: true, failOnError: true)
        //new Contacs(...).save(flush: true, failOnError: true)
        //Contacs contacs = new Contacs(...).save(flush: true, failOnError: true)
        //new Contacs(...).save(flush: true, failOnError: true)
        //new Contacs(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //contacs.id
    }

    void "test get"() {
        setupData()

        expect:
        contacsService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Contacs> contacsList = contacsService.list(max: 2, offset: 2)

        then:
        contacsList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        contacsService.count() == 5
    }

    void "test delete"() {
        Long contacsId = setupData()

        expect:
        contacsService.count() == 5

        when:
        contacsService.delete(contacsId)
        sessionFactory.currentSession.flush()

        then:
        contacsService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Contacs contacs = new Contacs()
        contacsService.save(contacs)

        then:
        contacs.id != null
    }
}
