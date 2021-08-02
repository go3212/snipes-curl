// src/greeting.cpp
#define CURL_STATICLIB
#include <iostream>
#include <string>
#include "greeting.h"
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include <curl/curl.h>
static size_t WriteCallback(void *contents, size_t size, size_t nmemb, void *userp)
{
    ((std::string*)userp)->append((char*)contents, size * nmemb);
    return size * nmemb;
}

std::string helloUser( std::string name ) {
    CURL *curl;
    CURLcode res;
    std::string readBuffer;

    curl = curl_easy_init();
    if(curl) {
      curl_easy_setopt(curl, CURLOPT_URL, "http://www.google.com");
      curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
      curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);
      res = curl_easy_perform(curl);
      curl_easy_cleanup(curl);
    std::cout << readBuffer << std::endl;
    }
    return std::string("ok");
}
