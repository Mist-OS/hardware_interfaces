/**
 * Copyright (c) 2022, The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.hardware.graphics.composer3;

@VintfStability
parcelable BufferAheadResult {
    /**
     * The display which this commands refers to.
     * @see IComposer.createDisplay
     */
    long display;

    @VintfStability
    parcelable Layer {
        /**
         * The layer which this commands refers to.
         * @see IComposer.createLayer
         */
        long layer;

        /**
         * Represents whether BufferAhead was presented as part of the last
         * present or not.
         */
        boolean presented;
    }

    /**
     * The layers which has BufferAheadResult populated.
     */
    Layer[] layers;
}
