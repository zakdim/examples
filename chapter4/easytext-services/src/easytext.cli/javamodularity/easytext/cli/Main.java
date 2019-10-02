package javamodularity.easytext.cli;

import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.ServiceLoader;
import java.util.ServiceLoader;
import javamodularity.easytext.analysis.api.Analyzer;

import javamodularity.easytext.analysis.api.Analyzer;
import javamodularity.easytext.analysis.api.Analyzer;

public class Main {

   public static void main(String... args) throws IOException {
      if (args.length == 0) {
         System.out.println("Welcome to EasyText. Please provide a filename as input argument");
         return;
      }

      Path path = Paths.get(args[0]);
      System.out.println("Reading " + path);
      String text = new String(Files.readAllBytes(path), Charset.forName("UTF-8"));

      List<List<String>> sentences = toSentences(text);


      Iterable<Analyzer> analyzers = ServiceLoader.load(Analyzer.class);

      for (Analyzer analyzer: analyzers) { 
        System.out.println(analyzer.getName() + ": " + analyzer.analyze(sentences));
      }

      // // Service Life Cycle Example: page 68
      // ServiceLoader<Analyzer> first = ServiceLoader.load(Analyzer.class);
      // System.out.println("Using the first analyzers");
      // for (Analyzer analyzer : first) {
      //    System.out.println(analyzer.hashCode());
      // }

      // Iterable<Analyzer> second = ServiceLoader.load(Analyzer.class);
      // System.out.println("Using the second analyzers");
      // for (Analyzer analyzer : second) {
      //    System.out.println(analyzer.hashCode());
      // }

      // System.out.println("Using the first analyzers again, hashCode is the same");
      // for (Analyzer analyzer : first) {
      //    System.out.println(analyzer.hashCode());
      // }

      // first.reload();
      // System.out.println("Reloading the first analyzers, hashCode is different");
      // for (Analyzer analyzer : first) {
      //    System.out.println(analyzer.hashCode());
      // }
   }

   public static List<List<String>> toSentences(String text) {
      String removedBreaks = text.replaceAll("\\r?\\n", " ");
      ArrayList<List<String>> sentences = new ArrayList<>();
      for(String rawSentence: removedBreaks.split("[\\.\\?\\!]")) {
         List<String> words = toWords(rawSentence);
         if(words.size() > 0) {
            sentences.add(words);
         }
      }

      return sentences;
   }

   public static List<String> toWords(String sentence) {
      String[] rawWords = sentence.split("\\s+");
      List<String> words = new ArrayList<>();
      for(String rawWord: rawWords) {
         String word = rawWord.replaceAll("\\W", "");
         if(word.length() > 0) {
            words.add(word);
         }
      }

      return words;
   }

}
