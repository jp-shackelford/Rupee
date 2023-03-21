#include <Rupee.h>

class Claypot : public Rupee::Application {
    public:
        Claypot() {
        }

        ~Claypot() {
        }

};

Rupee::Application* Rupee::CreateApplication() {
    return new Claypot;
}

