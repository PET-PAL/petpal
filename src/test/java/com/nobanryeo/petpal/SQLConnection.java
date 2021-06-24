import java.sql.Connection;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/resources/spring/**/root-context.xml" })
public class SQLConnection {

      @Inject
       private DataSource ds;
    
       @Test
       public void testConnection() throws Exception {
    
           try (Connection con = ds.getConnection()) {
    
               System.out.println("\n >>>>>>>>>> Connection 출력 : " + con + "\n");
    
           } catch (Exception e) {
               e.printStackTrace();
           }
       }
}