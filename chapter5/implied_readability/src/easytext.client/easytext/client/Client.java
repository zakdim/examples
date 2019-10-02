package easytext.client;

import java.util.ServiceLoader;
import static java.util.ServiceLoader.Provider;

import easytext.repository.api.TextRepository;

public class Client {

   public static void main(String... args) {
      // TextRepository repository = ServiceLoader.load(TextRepository.class)
      //    .iterator().next();

      TextRepository repository = ServiceLoader.load(TextRepository.class)
         .stream()
         .map(Provider::get)
         .findFirst().get();
         

      System.out.println(repository.findText("HHGTTG").wordcount());
   }

}
