/**
 * Copyright (c) 2015, The CyanogenMod Project
 *               2017 The LineageOS Project
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

package lineageos.hardware;

import lineageos.hardware.DisplayMode;
import lineageos.hardware.HSIC;
import lineageos.hardware.IThermalListenerCallback;
import lineageos.hardware.TouchscreenGesture;

/** @hide */
interface ILineageHardwareService {

    int getSupportedFeatures();
    boolean get(int feature);
    boolean set(int feature, boolean enable);

    int[] getDisplayColorCalibration();
    boolean setDisplayColorCalibration(in int[] rgb);

    int getNumGammaControls();
    int[] getDisplayGammaCalibration(int idx);
    boolean setDisplayGammaCalibration(int idx, in int[] rgb);

    int[] getVibratorIntensity();
    boolean setVibratorIntensity(int intensity);

    String getLtoSource();
    String getLtoDestination();
    long getLtoDownloadInterval();

    String getSerialNumber();

    boolean requireAdaptiveBacklightForSunlightEnhancement();

    DisplayMode[] getDisplayModes();
    DisplayMode getCurrentDisplayMode();
    DisplayMode getDefaultDisplayMode();
    boolean setDisplayMode(in DisplayMode mode, boolean makeDefault);

    int getThermalState();
    boolean registerThermalListener(IThermalListenerCallback callback);
    boolean unRegisterThermalListener(IThermalListenerCallback callback);
    boolean isSunlightEnhancementSelfManaged();

    int getColorBalanceMin();
    int getColorBalanceMax();
    int getColorBalance();
    boolean setColorBalance(int value);

    HSIC getPictureAdjustment();
    HSIC getDefaultPictureAdjustment();
    boolean setPictureAdjustment(in HSIC hsic);
    float[] getPictureAdjustmentRanges();

    TouchscreenGesture[] getTouchscreenGestures();
    boolean setTouchscreenGestureEnabled(in TouchscreenGesture gesture, boolean state);
}
