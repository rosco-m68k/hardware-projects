/*
 *                                  ___ ___ _
 *  ___ ___ ___ ___ ___       _____|  _| . | |_
 * |  _| . |_ -|  _| . |     |     | . | . | '_|
 * |_| |___|___|___|___|_____|_|_|_|___|___|_,_|
 *                     |_____|      Xosera Video
 * Copyright (c)2020 Ross Bamford
 * See top-level LICENSE.md for licence information.
 *
 * Xosera 104x30 text console.
 *
 */

#include <stdio.h>

extern void XVID_CON_INIT(void);
extern void XVID_CON_INSTALLHANDLERS(void);
extern void main(void);

void kmain() {
  printf("About to init\n");
  XVID_CON_INIT();

  printf("About to install handlers\n");
  XVID_CON_INSTALLHANDLERS();
  
  for (int i = 0; i < 1000000; i++) { }

  main();

//  do { } while (1);
}

