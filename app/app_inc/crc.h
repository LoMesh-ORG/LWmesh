/*
Copyright 2020 Samuel Ramrajkar

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/
/* 
 * File:   crc.h
 * Author: samuel
 *
 * Created on March 29, 2020, 11:02 AM
 */

#ifndef CRC1_H
#define	CRC1_H

#ifdef	__cplusplus
extern "C" {
#endif

    uint16_t crc16_app(uint8_t* dptr, uint16_t len, uint16_t seed);


#ifdef	__cplusplus
}
#endif

#endif	/* CRC_H */

