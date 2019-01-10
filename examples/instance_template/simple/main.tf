/**
 * Copyright 2018 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

provider "google" {
  credentials = "${file(var.credentials_path)}"
  project     = "${var.project_id}"
  region      = "${var.region}"
}

provider "google-beta" {
  credentials = "${file(var.credentials_path)}"
  project     = "${var.project_id}"
  region      = "${var.region}"
}

module "instance_template" {
  source          = "../../../instance_template"
  subnetwork      = "${var.subnetwork}"
  service_account = "${var.service_account}"
}
