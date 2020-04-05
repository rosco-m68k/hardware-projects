/*
 *------------------------------------------------------------
 *                                  ___ ___ _   
 *  ___ ___ ___ ___ ___       _____|  _| . | |_ 
 * |  _| . |_ -|  _| . |     |     | . | . | '_|
 * |_| |___|___|___|___|_____|_|_|_|___|___|_,_| 
 *                     |_____|       firmware v1                 
 * ------------------------------------------------------------
 * Copyright (c)2020 Ross Bamford
 * See top-level LICENSE.md for licence information.
 *
 * Read proof-of-concept Arduino IO device
 * ------------------------------------------------------------
 */

#include <stdnoreturn.h>
#include <stdbool.h>
#include <basicio.h>
#include <gpio.h>

// Arduino should be at all even IO addresses
static uint8_t const *arduino = (uint8_t const *)0xF80002;

noreturn void kmain() {
  print("\033[2J");

  println("Read Arduino Demo");
  println("trigger...");
  pinMode(GPIO1, OUTPUT);
  digitalWrite(GPIO1, false);

  delay(100000);

  println("Read value...");
  uint8_t value = *arduino;

  print("Got value: 0x");
  printuchar(value);

  println("");

  println("Continued successfully...");

  while (true) {
  }
}

