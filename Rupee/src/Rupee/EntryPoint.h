#ifndef ENTRY_POINT_H
#define ENTRY_POINT_H

#ifdef RP_PLATFORM_WINDOWS

extern Rupee::Application* Rupee::CreateApplication();

int main(int argc, char** argv) {
	auto app = Rupee::CreateApplication();
	app->Run();
	delete app;
}

#endif

#endif
