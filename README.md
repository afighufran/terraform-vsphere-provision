
# terraform-vsphere-provision

Project ini dibuat untuk mendokumentasikan proses pembelajaran saya pada tools terraform. Dan project ini bertujuan untuk dapat melakukan provisioning VM pada vSphere environment.

Goals pada project ini ialah mengenalkan best practice penulisan kode untuk tidak menyantumkan credentials secara hard-coded di file .tfvars, dan juga mengenalkan fitur modules agar kode reusable dan memiliki standarisasi.

Dengan ini diharapkan kode ini dapat bermanfaat terhadap orang yang ingin belajar terraform namun pada environment on-premise.

Untuk segala macam koneksi ke vSphere maupun variable resource pada vSphere bisa dilihat pada file terraform.tfvars.example.

Requirement untuk menggunakan code ini ialah:
- Terraform yang terinstall pada machine, baik pada local machine maupun bastion/jumphost machine.
- Template VM yang ingin digunakan untuk provisioning

Dan disarankan untuk menulis kode secara manual (bukan copy-paste) agar bertujuan dapat memahami kode dengan baik.

Apabila ada saran ataupun diskusi terhadap repository project ini, dapat menghubungi saya melalui discord: alterize

Terima kasih.
