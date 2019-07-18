package release.test;

import io.bootique.Bootique;

public class Application {

    public static void main(String[] args) {
        Bootique
                .app(args)
                .exec();
    }
}
