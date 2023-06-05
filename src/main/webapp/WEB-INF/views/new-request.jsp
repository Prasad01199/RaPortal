<section class="container container-custom">
  <section class="row justify-content-center new-req-sec">
    <section class="col-lg-12 col-sm-6 col-md-10 shadow-lg mb-5 bg-custom rounded">
      <div class="accordion accordion-custom" id="accordionPanelsStayOpenExample">
        <div class="accordion-item item-custom">
          <h2 class="accordion-header form-label-custom" id="panelsStayOpen-headingOne">

            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                    data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true"
                    aria-controls="panelsStayOpen-collapseOne">
              Request details
            </button>
          </h2>
          <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show"
               aria-labelledby="panelsStayOpen-headingOne">
            <div class="accordion-body">
              <div>
                <label for="username" class="form-label input-label-font subscriber-label-custom">Subscriber Login
                  Id</label>
                <input class="input100 border-custom placeholder-font" type="text" placeholder="Enter Login Id"
                       size="30" name="subsLoginId" id="subsLoginId">
                <button type="button" class="btn btn-warning float-right custom-btn fetch-clr" onclick="fetchSubs();">Fetch</button>
                <br>
                <a href="#" onclick="captchaGenerate();" class="custom-btn anchor-text-newsubs" data-bs-toggle="modal"
                   data-bs-target="#NewSubscriber">new subscriber</a>
                <div class="modal fade" id="NewSubscriber" tabindex="-1" aria-labelledby="NewSubscriberLabel"
                     aria-hidden="true">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header modal-header-clr">
                        <h5 class="modal-title" id="CreateAccountLabel form-label-custom">Create Account</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body modal-body-clr">
                        <form>
                          <div>
                            <label for="EmailId" class="col-form-label form-label-custom">Email Id</label>
                            <input type="text" class="form-control placeholder-font" id="emailId"
                                   placeholder="Enter Email Id">
                          </div>
                          <div>
                            <label for="LoginId" class="col-form-label form-label-custom">Login Id</label>
                            <input type="text" class="form-control placeholder-font" id="loginId"
                                   placeholder="Enter Login Id">
                          </div>
                          <div>
                            <label for="Captcha" class="col-form-label form-label-custom">Captcha</label>
                            <input type="text" class="form-control" id="Captcha">
                          </div>
                          <div class="inline">
                            <i class="fas fa-sync"></i>
                          </div>
                         <div id="image" class="inline" selectable="False">
                            <p id="captcha_" class="captcha_"></p>
                         </div>
                        </form>
                      </div>
                      <div class="modal-footer modal-footer-clr">
                        <button type="button" class="btn btn-primary">Create Account</button>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                      </div>
                    </div>
                  </div>
                </div>
                <form>
                  <div class="control input-fields-container">
                    <div class="container">
                      <div class="row justify-content-center mt-3">
                        <div class="col-lg-6">
                          <label for="name" class="form-label-custom">Name<span
                            class="required required-custom">*</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
                          id="name" type="text" class="border-custom placeholder-font" placeholder="Enter Name"
                          size="30"/>
                        </div>
                        <div class="col-lg-6">
                          <label for="Mobile no" class="form-label-custom">Mobile no<span
                            class="required required-custom">*</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
                          type="tel" class="border-custom placeholder-font" placeholder="Enter Mobile no"
                          size="30" value="+91 " id="mobileNo"/>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="control input-fields-container">
                    <div class="container">
                      <div class="row justify-content-center mt-3">
                        <div class="col-lg-6">
                          <label for="email" class="form-label-custom">Email Id<span
                            class="required required-custom">*</span></label>&nbsp;&nbsp;&nbsp;<input id="emailId_"
                                                                                                      size="30"
                                                                                                      type="email"
                                                                                                      class="border-custom placeholder-font"
                                                                                                      placeholder="Enter Email Id"/><br>
                        </div>
                        <div class="col-lg-6">
                          <label class="form-label-custom">Certificate Type(s)<span
                            class="required required-custom">*</span></label>
                          <a href="#" class="anchor-select-certificate" data-bs-toggle="modal"
                             data-bs-target="#SelectCertificateModal">Select Certificate</a>
                          <div class="modal fade" id="SelectCertificateModal" tabindex="-1"
                               aria-labelledby="SelectCertificateModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-xl">
                              <div class="modal-content">
                                <div class="modal-header modal-header-clr">
                                  <h5 class="modal-title" id="SelectCertificateModalLabel">CERTIFICATES</h5>
                                  <button type="button" class="btn-close" data-bs-dismiss="modal"
                                          aria-label="Close"></button>
                                </div>
                                <div class="modal-body modal-body-clr">
                                  <div class="container-fluid">
                                    <div class="row">
                                      <div class="col-3">
                                        <label for="Captcha">Certificate Root Type</label>
                                        <div class="dropdown style">
                                          <button class="btn btn-light dropdown-toggle" type="button"
                                                  data-bs-toggle="dropdown" aria-expanded="false">
                                            Select
                                          </button>
                                          <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="#">All</a></li>
                                            <li>
                                              <hr class="dropdown-divider">
                                            </li>
                                            <li><a class="dropdown-item" href="#">Production</a></li>
                                            <li>
                                              <hr class="dropdown-divider">
                                            </li>
                                            <li><a class="dropdown-item" href="#">Pre-Production</a></li>
                                          </ul>
                                        </div>
                                      </div>
                                      <div class="col-3">
                                        <label for="Captcha">Category</label>
                                        <div class="dropdown style">
                                          <button class="btn btn-light dropdown-toggle" type="button"
                                                  data-bs-toggle="dropdown" aria-expanded="false">
                                            Select
                                          </button>
                                          <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="#">All</a></li>
                                            <li>
                                              <hr class="dropdown-divider">
                                            </li>
                                            <li><a class="dropdown-item" href="#">SSL</a></li>
                                            <li>
                                              <hr class="dropdown-divider">
                                            </li>
                                            <li><a class="dropdown-item" href="#">Signature</a></li>
                                            <li>
                                              <hr class="dropdown-divider">
                                            </li>
                                            <li><a class="dropdown-item" href="#">System Certificate</a></li>
                                            <li>
                                              <hr class="dropdown-divider">
                                            </li>
                                            <li><a class="dropdown-item" href="#">Encryption</a></li>
                                          </ul>
                                        </div>
                                      </div>
                                      <div class="col-3">
                                        <label for="Captcha">Class</label>
                                        <div class="dropdown style">
                                          <button class="btn btn-light dropdown-toggle" type="button"
                                                  data-bs-toggle="dropdown" aria-expanded="false">
                                            Select
                                          </button>
                                          <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="#">All</a></li>
                                            <li>
                                              <hr class="dropdown-divider">
                                            </li>
                                            <li><a class="dropdown-item" href="#">Class 1</a></li>
                                            <li>
                                              <hr class="dropdown-divider">
                                            </li>
                                            <li><a class="dropdown-item" href="#">Class 2</a></li>
                                            <li>
                                              <hr class="dropdown-divider">
                                            </li>
                                            <li><a class="dropdown-item" href="#">Class 3</a></li>

                                          </ul>
                                        </div>
                                      </div>
                                      <div class="col-3">
                                        <label for="Captcha">Validity</label>
                                        <div class="dropdown style">
                                          <button class="btn btn-light dropdown-toggle" type="button"
                                                  data-bs-toggle="dropdown" aria-expanded="false">
                                            Select
                                          </button>
                                          <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="#">All</a></li>
                                            <li>
                                              <hr class="dropdown-divider">
                                            </li>
                                            <li><a class="dropdown-item" href="#">1 Year</a></li>
                                            <li>
                                              <hr class="dropdown-divider">
                                            </li>
                                            <li><a class="dropdown-item" href="#">2 Year</a></li>
                                            <li>
                                              <hr class="dropdown-divider">
                                            </li>
                                            <li><a class="dropdown-item" href="#">6 Months</a></li>
                                          </ul>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <table class="table">
                                  <thead>
                                  <tr class="table-light">
                                    <th>Certificate</th>
                                  </tr>
                                  </thead>
                                  <tbody>
                                  <tr>
                                    <td>
                                      <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                        <label class="form-check-label radio-style" for="flexCheckDefault">
                                          Class 1 - Signing Certificate - 1 year
                                        </label>
                                      </div>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td>
                                      <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                        <label class="form-check-label radio-style" for="flexCheckDefault">
                                          Class 1 - Siging Certificate - 2 years
                                        </label>
                                      </div>
                                    </td>
                                  </tr>
                                  <td>
                                    <div class="form-check">
                                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                      <label class="form-check-label radio-style" for="flexCheckDefault">
                                        Class 1 - Encryption Certificate - 1 year
                                      </label>
                                    </div>
                                  </td>
                                  <tr>
                                    <td>
                                      <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                        <label class="form-check-label radio-style" for="flexCheckDefault">
                                          Class 1 - Encryption Certificate - 2 years
                                        </label>
                                      </div>
                                    </td>
                                  </tr>
                                  </tbody>
                                </table>
                                <div class="modal-footer modal-footer-clr">
                                  <button type="button" class="btn btn-primary">Add</button>
                                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
              </div>
              <br>
              <div class="btn-save-cancel">
                <button type="button" class="btn btn-primary float-right btn-save">Save</button>
                <button type="button" class="btn btn-warning float-right btn-cancel">Cancel</button>
              </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      </div>
    </section>
  </section>
</section>
