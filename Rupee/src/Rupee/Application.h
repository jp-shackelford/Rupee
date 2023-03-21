#ifndef APP_H
#define APP_H

#include "Core.h"

namespace Rupee
{
    class RUPEE_API Application {
    public:
        Application();
        virtual ~Application();

        void Run();
    };

    // To be defined by Rupee client
    Application* CreateApplication();
} // namespace Rupee

#endif

