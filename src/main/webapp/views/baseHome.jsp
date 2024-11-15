<%@ include file="/commons/taglib.jsp"%>>
<!-- Start: Welcome Section -->
<section class="welcome-section">
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <div class="welcome-wrap">
          <div class="welcome-text">
            <h2 class="section-title">Welcome to the libraria</h2>
            <span class="underline left"></span>
            <p class="lead">The standard chunk of Lorem Ipsum used since</p>
            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humor, or randomized words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humor, or non-characteristic words etc.</p>
            <a class="btn btn-primary" href="${URL}template/assets/#">Read More</a>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="facts-counter">
          <ul>
            <li class="bg-light-green">
              <div class="fact-item">
                <div class="fact-icon">
                  <i class="ebook"></i>
                </div>
                <span>eBooks<strong class="fact-counter">45780</strong></span>
              </div>
            </li>
            <li class="bg-green">
              <div class="fact-item">
                <div class="fact-icon">
                  <i class="eaudio"></i>
                </div>
                <span>eAudio<strong class="fact-counter">32450</strong></span>
              </div>
            </li>
            <li class="bg-red">
              <div class="fact-item">
                <div class="fact-icon">
                  <i class="magazine"></i>
                </div>
                <span>Magazine<strong class="fact-counter">14450</strong></span>
              </div>
            </li>
            <li class="bg-blue">
              <div class="fact-item">
                <div class="fact-icon">
                  <i class="videos"></i>
                </div>
                <span>Videos<strong class="fact-counter">32450</strong></span>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="welcome-image"></div>
</section>
<!-- End: Welcome Section -->

<!-- Start: Category Filter -->
<section class="category-filter section-padding">
  <div class="container">
    <div class="center-content">
      <div class="row">
        <div class="col-md-6 col-md-offset-3">
          <h2 class="section-title">Check Out The New Releases</h2>
          <span class="underline center"></span>
          <p class="lead">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.</p>
        </div>
      </div>
    </div>
    <div class="filter-buttons">
      <div class="filter btn" data-filter="all">All Releases</div>
      <div class="filter btn" data-filter=".adults">Adults</div>
      <div class="filter btn" data-filter=".kids-teens">Kids &amp; Teens</div>
      <div class="filter btn" data-filter=".video">Video</div>
      <div class="filter btn" data-filter=".audio">Audio</div>
      <div class="filter btn" data-filter=".books">Books</div>
      <div class="filter btn" data-filter=".magazines">Magazines</div>
    </div>
  </div>
  <div id="category-filter">
    <ul class="category-list">
      <li class="category-item adults">
        <figure>
          <img src="${URL}template/assets/images/category-filter/home-v1/category-filter-img-01.jpg" alt="New Releaase" />
          <figcaption class="bg-orange">
            <div class="info-block">
              <h4>The Great Gatsby</h4>
              <span class="author"><strong>Author:</strong> F. Scott Fitzgerald</span>
              <span class="author"><strong>ISBN:</strong> 9781581573268</span>
              <div class="rating">
                <span>☆</span>
                <span>☆</span>
                <span>☆</span>
                <span>☆</span>
                <span>☆</span>
              </div>
              <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. Pellentesque dolor turpis, pulvinar varius.</p>
              <a href="${URL}template/assets/#">Read More <i class="fa fa-long-arrow-right"></i></a>
              <ol>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-shopping-cart"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-heart"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-envelope"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-share-alt"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-search"></i>
                  </a>
                </li>
              </ol>
            </div>
          </figcaption>
        </figure>
      </li>
      <li class="category-item kids-teens">
        <figure>
          <img src="${URL}template/assets/images/category-filter/home-v1/category-filter-img-02.jpg" alt="New Releaase" />
          <figcaption class="bg-orange">
            <div class="info-block">
              <h4>The Great Gatsby</h4>
              <span class="author"><strong>Author:</strong> F. Scott Fitzgerald</span>
              <span class="author"><strong>ISBN:</strong> 9781581573268</span>
              <div class="rating">
                <span>☆</span>
                <span>☆</span>
                <span>☆</span>
                <span>☆</span>
                <span>☆</span>
              </div>
              <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. Pellentesque dolor turpis, pulvinar varius.</p>
              <a href="${URL}template/assets/#">Read More <i class="fa fa-long-arrow-right"></i></a>
              <ol>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-shopping-cart"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-heart"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-envelope"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-share-alt"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-search"></i>
                  </a>
                </li>
              </ol>
            </div>
          </figcaption>
        </figure>
      </li>
      <li class="category-item video">
        <figure>
          <img src="${URL}template/assets/images/category-filter/home-v1/category-filter-img-03.jpg" alt="New Releaase" />
          <figcaption class="bg-orange">
            <div class="info-block">
              <h4>The Great Gatsby</h4>
              <span class="author"><strong>Author:</strong> F. Scott Fitzgerald</span>
              <span class="author"><strong>ISBN:</strong> 9781581573268</span>
              <div class="rating">
                <span>☆</span>
                <span>☆</span>
                <span>☆</span>
                <span>☆</span>
                <span>☆</span>
              </div>
              <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. Pellentesque dolor turpis, pulvinar varius.</p>
              <a href="${URL}template/assets/#">Read More <i class="fa fa-long-arrow-right"></i></a>
              <ol>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-shopping-cart"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-heart"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-envelope"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-share-alt"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-search"></i>
                  </a>
                </li>
              </ol>
            </div>
          </figcaption>
        </figure>
      </li>
      <li class="category-item audio">
        <figure>
          <img src="${URL}template/assets/images/category-filter/home-v1/category-filter-img-04.jpg" alt="New Releaase" />
          <figcaption class="bg-orange">
            <div class="info-block">
              <h4>The Great Gatsby</h4>
              <span class="author"><strong>Author:</strong> F. Scott Fitzgerald</span>
              <span class="author"><strong>ISBN:</strong> 9781581573268</span>
              <div class="rating">
                <span>☆</span>
                <span>☆</span>
                <span>☆</span>
                <span>☆</span>
                <span>☆</span>
              </div>
              <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. Pellentesque dolor turpis, pulvinar varius.</p>
              <a href="${URL}template/assets/#">Read More <i class="fa fa-long-arrow-right"></i></a>
              <ol>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-shopping-cart"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-heart"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-envelope"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-share-alt"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-search"></i>
                  </a>
                </li>
              </ol>
            </div>
          </figcaption>
        </figure>
      </li>
      <li class="category-item books">
        <figure>
          <img src="${URL}template/assets/images/category-filter/home-v1/category-filter-img-05.jpg" alt="New Releaase" />
          <figcaption class="bg-orange">
            <div class="info-block">
              <h4>The Great Gatsby</h4>
              <span class="author"><strong>Author:</strong> F. Scott Fitzgerald</span>
              <span class="author"><strong>ISBN:</strong> 9781581573268</span>
              <div class="rating">
                <span>☆</span>
                <span>☆</span>
                <span>☆</span>
                <span>☆</span>
                <span>☆</span>
              </div>
              <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. Pellentesque dolor turpis, pulvinar varius.</p>
              <a href="${URL}template/assets/#">Read More <i class="fa fa-long-arrow-right"></i></a>
              <ol>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-shopping-cart"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-heart"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-envelope"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-share-alt"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-search"></i>
                  </a>
                </li>
              </ol>
            </div>
          </figcaption>
        </figure>
      </li>
      <li class="category-item magazines">
        <figure>
          <img src="${URL}template/assets/images/category-filter/home-v1/category-filter-img-06.jpg" alt="New Releaase" />
          <figcaption class="bg-orange">
            <div class="info-block">
              <h4>The Great Gatsby</h4>
              <span class="author"><strong>Author:</strong> F. Scott Fitzgerald</span>
              <span class="author"><strong>ISBN:</strong> 9781581573268</span>
              <div class="rating">
                <span>☆</span>
                <span>☆</span>
                <span>☆</span>
                <span>☆</span>
                <span>☆</span>
              </div>
              <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. Pellentesque dolor turpis, pulvinar varius.</p>
              <a href="${URL}template/assets/#">Read More <i class="fa fa-long-arrow-right"></i></a>
              <ol>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-shopping-cart"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-heart"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-envelope"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-share-alt"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-search"></i>
                  </a>
                </li>
              </ol>
            </div>
          </figcaption>
        </figure>
      </li>
      <li class="category-item adults">
        <figure>
          <img src="${URL}template/assets/images/category-filter/home-v1/category-filter-img-07.jpg" alt="New Releaase" />
          <figcaption class="bg-orange">
            <div class="info-block">
              <h4>The Great Gatsby</h4>
              <span class="author"><strong>Author:</strong> F. Scott Fitzgerald</span>
              <span class="author"><strong>ISBN:</strong> 9781581573268</span>
              <div class="rating">
                <span>☆</span>
                <span>☆</span>
                <span>☆</span>
                <span>☆</span>
                <span>☆</span>
              </div>
              <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. Pellentesque dolor turpis, pulvinar varius.</p>
              <a href="${URL}template/assets/#">Read More <i class="fa fa-long-arrow-right"></i></a>
              <ol>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-shopping-cart"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-heart"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-envelope"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-share-alt"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-search"></i>
                  </a>
                </li>
              </ol>
            </div>
          </figcaption>
        </figure>
      </li>
      <li class="category-item kids-teens">
        <figure>
          <img src="${URL}template/assets/images/category-filter/home-v1/category-filter-img-08.jpg" alt="New Releaase" />
          <figcaption class="bg-orange">
            <div class="info-block">
              <h4>The Great Gatsby</h4>
              <span class="author"><strong>Author:</strong> F. Scott Fitzgerald</span>
              <span class="author"><strong>ISBN:</strong> 9781581573268</span>
              <div class="rating">
                <span>☆</span>
                <span>☆</span>
                <span>☆</span>
                <span>☆</span>
                <span>☆</span>
              </div>
              <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. Pellentesque dolor turpis, pulvinar varius.</p>
              <a href="${URL}template/assets/#">Read More <i class="fa fa-long-arrow-right"></i></a>
              <ol>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-shopping-cart"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-heart"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-envelope"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-share-alt"></i>
                  </a>
                </li>
                <li>
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-search"></i>
                  </a>
                </li>
              </ol>
            </div>
          </figcaption>
        </figure>
      </li>
    </ul>
    <div class="center-content">
      <a href="${URL}template/assets/#" class="btn btn-primary">View More</a>
    </div>
    <div class="clearfix"></div>
  </div>
</section>
<!-- Start: Category Filter -->

<!-- Start: Features -->
<section class="features">
  <div class="container">
    <ul>
      <li class="bg-yellow">
        <div class="feature-box">
          <i class="yellow"></i>
          <h3>Books</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dolor turpis, pulvinar varius dui id, convallis iaculis eros.</p>
          <a class="yellow" href="${URL}template/assets/#">
            View Selection <i class="fa fa-long-arrow-right"></i>
          </a>
        </div>
      </li>
      <li class="bg-light-green">
        <div class="feature-box">
          <i class="light-green"></i>
          <h3>eBooks</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dolor turpis, pulvinar varius dui id, convallis iaculis eros.</p>
          <a class="light-green" href="${URL}template/assets/#">
            View Selection <i class="fa fa-long-arrow-right"></i>
          </a>
        </div>
      </li>
      <li class="bg-blue">
        <div class="feature-box">
          <i class="blue"></i>
          <h3>DVDs</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dolor turpis, pulvinar varius dui id, convallis iaculis eros.</p>
          <a class="blue" href="${URL}template/assets/#">
            View Selection <i class="fa fa-long-arrow-right"></i>
          </a>
        </div>
      </li>
      <li class="bg-red">
        <div class="feature-box">
          <i class="red"></i>
          <h3>Magazines</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dolor turpis, pulvinar varius dui id, convallis iaculis eros.</p>
          <a class="red" href="${URL}template/assets/#">
            View Selection <i class="fa fa-long-arrow-right"></i>
          </a>
        </div>
      </li>
      <li class="bg-violet">
        <div class="feature-box">
          <i class="violet"></i>
          <h3>Audio</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dolor turpis, pulvinar varius dui id, convallis iaculis eros.</p>
          <a class="violet" href="${URL}template/assets/#">
            View Selection <i class="fa fa-long-arrow-right"></i>
          </a>
        </div>
      </li>
      <li class="bg-green">
        <div class="feature-box">
          <i class="green"></i>
          <h3>eAudio</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dolor turpis, pulvinar varius dui id, convallis iaculis eros.</p>
          <a class="green" href="${URL}template/assets/#">
            View Selection <i class="fa fa-long-arrow-right"></i>
          </a>
        </div>
      </li>
    </ul>
  </div>
</section>
<!-- End: Features -->

<!-- Start: Newsletter -->
<section class="newsletter section-padding">
  <div class="container">
    <div class="row">
      <div class="col-md-8 col-md-offset-2">
        <div class="center-content">
          <h2 class="section-title">Subscribe to our Newsletters</h2>
          <span class="underline center"></span>
          <p class="lead">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.</p>
        </div>
        <div class="form-group">
          <input class="form-control" placeholder="Enter your Email!" id="newsletter" name="newsletter" type="email">
          <input class="form-control" value="Subscribe" type="submit">
        </div>
      </div>
    </div>
  </div>
</section>
<!-- End: Newsletter -->

<!-- Start: Meet Staff -->
<section class="team section-padding">
  <div class="container">
    <div class="center-content">
      <h2 class="section-title">Meet Our Staff</h2>
      <span class="underline center"></span>
      <p class="lead">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
    </div>
    <div class="team-list">
      <div class="team-member">
        <figure>
          <img src="${URL}template/assets/images/team-img-01.jpg" alt="team" />
        </figure>
        <div class="content-block">
          <div class="member-info">
            <h4>David J. Seleb</h4>
            <span class="designation">Executive Director</span>
            <ul class="social">
              <li>
                <a href="${URL}template/assets/#" target="_blank">
                  <i class="fa fa-linkedin"></i>
                </a>
              </li>
              <li>
                <a href="${URL}template/assets/#" target="_blank">
                  <i class="fa fa-facebook-f"></i>
                </a>
              </li>
              <li>
                <a href="${URL}template/assets/#" target="_blank">
                  <i class="fa fa-twitter"></i>
                </a>
              </li>
              <li>
                <a href="${URL}template/assets/#" target="_blank">
                  <i class="fa fa-skype"></i>
                </a>
              </li>
            </ul>
            <p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here...</p>
            <a class="btn btn-primary" href="${URL}template/assets/#">Read More</a>
          </div>
        </div>
      </div>
      <div class="team-member">
        <figure>
          <img src="${URL}template/assets/images/team-img-02.jpg" alt="team" />
        </figure>
        <div class="content-block">
          <div class="member-info">
            <h4>Robert Simmons</h4>
            <span class="designation">Deputy Director</span>
            <ul class="social">
              <li>
                <a href="${URL}template/assets/#" target="_blank">
                  <i class="fa fa-linkedin"></i>
                </a>
              </li>
              <li>
                <a href="${URL}template/assets/#" target="_blank">
                  <i class="fa fa-facebook-f"></i>
                </a>
              </li>
              <li>
                <a href="${URL}template/assets/#" target="_blank">
                  <i class="fa fa-twitter"></i>
                </a>
              </li>
              <li>
                <a href="${URL}template/assets/#" target="_blank">
                  <i class="fa fa-skype"></i>
                </a>
              </li>
            </ul>
            <p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here...</p>
            <a class="btn btn-primary" href="${URL}template/assets/#">Read More</a>
          </div>
        </div>
      </div>
      <div class="team-member">
        <figure>
          <img src="${URL}template/assets/images/team-img-03.jpg" alt="team" />
        </figure>
        <div class="content-block">
          <div class="member-info">
            <h4>Anna Delpan</h4>
            <span class="designation">Librarian</span>
            <ul class="social">
              <li>
                <a href="${URL}template/assets/#" target="_blank">
                  <i class="fa fa-linkedin"></i>
                </a>
              </li>
              <li>
                <a href="${URL}template/assets/#" target="_blank">
                  <i class="fa fa-facebook-f"></i>
                </a>
              </li>
              <li>
                <a href="${URL}template/assets/#" target="_blank">
                  <i class="fa fa-twitter"></i>
                </a>
              </li>
              <li>
                <a href="${URL}template/assets/#" target="_blank">
                  <i class="fa fa-skype"></i>
                </a>
              </li>
            </ul>
            <p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here...</p>
            <a class="btn btn-primary" href="${URL}template/assets/#">Read More</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- End: Meet Staff -->

<!-- Start: Latest Blog -->
<section class="latest-blog section-padding banner">
  <div class="container">
    <div class="center-content">
      <h2 class="section-title">Latest from Blog</h2>
      <span class="underline center"></span>
      <p class="lead">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.</p>
    </div>
    <div class="tabs-container">
      <div class="tabs-menu">
        <ul>
          <li class="active">
            <a href="${URL}template/assets/#" class="bg-yellow">
              <div class="title">
                <i class="yellow"></i>
                <h3>Books</h3>
              </div>
            </a>
          </li>
          <li>
            <a href="${URL}template/assets/#" class="bg-light-green">
              <div class="title">
                <i class="light-green"></i>
                <h3>eBooks</h3>
              </div>
            </a>
          </li>
          <li>
            <a href="${URL}template/assets/#" class="bg-blue">
              <div class="title">
                <i class="blue"></i>
                <h3>DVDS</h3>
              </div>
            </a>
          </li>
          <li>
            <a href="${URL}template/assets/#" class="bg-red">
              <div class="title">
                <i class="red"></i>
                <h3>Magazines</h3>
              </div>
            </a>
          </li>
          <li>
            <a href="${URL}template/assets/#" class="bg-violet">
              <div class="title">
                <i class="violet"></i>
                <h3>Audio</h3>
              </div>
            </a>
          </li>
          <li>
            <a href="${URL}template/assets/#" class="bg-green">
              <div class="title">
                <i class="green"></i>
                <h3>eAudio</h3>
              </div>
            </a>
          </li>
        </ul>
      </div>
      <div class="tabs-list">
        <div class="tab-content active">
          <article>
            <figure>
              <img src="${URL}template/assets/images/latest-blog-img-home-v1.jpg" alt="Latest Blog">
              <figcaption>
                <a href="${URL}template/assets/#.">
                  <span class="date">07</span>
                  <span class="month">Mar</span>
                </a>
              </figcaption>
            </figure>
            <div class="post-detail">
              <div class="info-bar">
                <div class="comments">
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-comment"></i> 37
                  </a>
                </div>
                <div class="likes">
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-thumbs-o-up"></i> 110
                  </a>
                </div>
                <div class="viewed">
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-eye"></i> 180
                  </a>
                </div>
                <div class="share">
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-share-alt"></i> Share
                  </a>
                </div>
              </div>
              <h4>It uses dictionary over 200 Latin</h4>
              <div class="author">
                <a href="${URL}template/assets/#">
                  <i class="fa fa-user"></i> Adrey Pachai
                </a>
              </div>
              <p>Etiam posuere ultrices mauris vitae tincidunt. Cras lacinia, lectus quis ullamcorper auctor, mauris lacus imperdiet turpis, et semper enim massa ut diam. Sed at malesuada urna. Mauris quis venenatis leo. Proin a malesuada purus. Suspendisse odio diam, ornare sit amet interdum ut, vehicula a lorem. Donec a sem erat. Etiam condimentum semper mauris vitae porttitor.</p>
              <a class="btn btn-dark-gray">Read More</a>
            </div>
          </article>
        </div>
        <div class="tab-content">
          <article>
            <figure>
              <img src="${URL}template/assets/images/latest-blog-img-home-v1-2.jpg" alt="Latest Blog">
              <figcaption>
                <a href="${URL}template/assets/#.">
                  <span class="date">06</span>
                  <span class="month">Mar</span>
                </a>
              </figcaption>
            </figure>
            <div class="post-detail">
              <div class="info-bar">
                <div class="comments">
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-comment"></i> 37
                  </a>
                </div>
                <div class="likes">
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-thumbs-o-up"></i> 110
                  </a>
                </div>
                <div class="viewed">
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-eye"></i> 180
                  </a>
                </div>
                <div class="share">
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-share-alt"></i> Share
                  </a>
                </div>
              </div>
              <h4>eBooks</h4>
              <div class="author">
                <a href="${URL}template/assets/#">
                  <i class="fa fa-user"></i> Adrey Pachai
                </a>
              </div>
              <p>Sed at malesuada urna. Mauris quis venenatis leo. Proin a malesuada purus. Suspendisse odio diam, ornare sit amet interdum ut, vehicula a lorem. Donec a sem erat. Etiam condimentum semper mauris vitae porttitor. Etiam posuere ultrices mauris vitae tincidunt. Cras lacinia, lectus quis ullamcorper auctor, mauris lacus imperdiet turpis, et semper enim massa ut.</p>
              <a class="btn btn-dark-gray">Read More</a>
            </div>
          </article>
        </div>
        <div class="tab-content">
          <article>
            <figure>
              <img src="${URL}template/assets/images/latest-blog-img-home-v1.jpg" alt="Latest Blog">
              <figcaption>
                <a href="${URL}template/assets/#.">
                  <span class="date">05</span>
                  <span class="month">Mar</span>
                </a>
              </figcaption>
            </figure>
            <div class="post-detail">
              <div class="info-bar">
                <div class="comments">
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-comment"></i> 37
                  </a>
                </div>
                <div class="likes">
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-thumbs-o-up"></i> 110
                  </a>
                </div>
                <div class="viewed">
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-eye"></i> 180
                  </a>
                </div>
                <div class="share">
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-share-alt"></i> Share
                  </a>
                </div>
              </div>
              <h4>DVDS</h4>
              <div class="author">
                <a href="${URL}template/assets/#">
                  <i class="fa fa-user"></i> Adrey Pachai
                </a>
              </div>
              <p>Etiam posuere ultrices mauris vitae tincidunt. Cras lacinia, lectus quis ullamcorper auctor, mauris lacus imperdiet turpis, et semper enim massa ut diam. Sed at malesuada urna. Mauris quis venenatis leo. Proin a malesuada purus. Suspendisse odio diam, ornare sit amet interdum ut, vehicula a lorem. Donec a sem erat. Etiam condimentum semper mauris vitae porttitor.</p>
              <a class="btn btn-dark-gray">Read More</a>
            </div>
          </article>
        </div>
        <div class="tab-content">
          <article>
            <figure>
              <img src="${URL}template/assets/images/latest-blog-img-home-v1-2.jpg" alt="Latest Blog">
              <figcaption>
                <a href="${URL}template/assets/#.">
                  <span class="date">04</span>
                  <span class="month">Mar</span>
                </a>
              </figcaption>
            </figure>
            <div class="post-detail">
              <div class="info-bar">
                <div class="comments">
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-comment"></i> 37
                  </a>
                </div>
                <div class="likes">
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-thumbs-o-up"></i> 110
                  </a>
                </div>
                <div class="viewed">
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-eye"></i> 180
                  </a>
                </div>
                <div class="share">
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-share-alt"></i> Share
                  </a>
                </div>
              </div>
              <h4>Magazines</h4>
              <div class="author">
                <a href="${URL}template/assets/#">
                  <i class="fa fa-user"></i> Adrey Pachai
                </a>
              </div>
              <p>Sed at malesuada urna. Mauris quis venenatis leo. Proin a malesuada purus. Suspendisse odio diam, ornare sit amet interdum ut, vehicula a lorem. Donec a sem erat. Etiam condimentum semper mauris vitae porttitor. Etiam posuere ultrices mauris vitae tincidunt. Cras lacinia, lectus quis ullamcorper auctor, mauris lacus imperdiet turpis, et semper enim massa ut.</p>
              <a class="btn btn-dark-gray">Read More</a>
            </div>
          </article>
        </div>
        <div class="tab-content">
          <article>
            <figure>
              <img src="${URL}template/assets/images/latest-blog-img-home-v1.jpg" alt="Latest Blog">
              <figcaption>
                <a href="${URL}template/assets/#.">
                  <span class="date">03</span>
                  <span class="month">Mar</span>
                </a>
              </figcaption>
            </figure>
            <div class="post-detail">
              <div class="info-bar">
                <div class="comments">
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-comment"></i> 37
                  </a>
                </div>
                <div class="likes">
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-thumbs-o-up"></i> 110
                  </a>
                </div>
                <div class="viewed">
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-eye"></i> 180
                  </a>
                </div>
                <div class="share">
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-share-alt"></i> Share
                  </a>
                </div>
              </div>
              <h4>Audio</h4>
              <div class="author">
                <a href="${URL}template/assets/#">
                  <i class="fa fa-user"></i> Adrey Pachai
                </a>
              </div>
              <p>Etiam posuere ultrices mauris vitae tincidunt. Cras lacinia, lectus quis ullamcorper auctor, mauris lacus imperdiet turpis, et semper enim massa ut diam. Sed at malesuada urna. Mauris quis venenatis leo. Proin a malesuada purus. Suspendisse odio diam, ornare sit amet interdum ut, vehicula a lorem. Donec a sem erat. Etiam condimentum semper mauris vitae porttitor.</p>
              <a class="btn btn-dark-gray">Read More</a>
            </div>
          </article>
        </div>
        <div class="tab-content">
          <article>
            <figure>
              <img src="${URL}template/assets/images/latest-blog-img-home-v1-2.jpg" alt="Latest Blog">
              <figcaption>
                <a href="${URL}template/assets/#.">
                  <span class="date">02</span>
                  <span class="month">Mar</span>
                </a>
              </figcaption>
            </figure>
            <div class="post-detail">
              <div class="info-bar">
                <div class="comments">
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-comment"></i> 37
                  </a>
                </div>
                <div class="likes">
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-thumbs-o-up"></i> 110
                  </a>
                </div>
                <div class="viewed">
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-eye"></i> 180
                  </a>
                </div>
                <div class="share">
                  <a href="${URL}template/assets/#">
                    <i class="fa fa-share-alt"></i> Share
                  </a>
                </div>
              </div>
              <h4>eAudio</h4>
              <div class="author">
                <a href="${URL}template/assets/#">
                  <i class="fa fa-user"></i> Adrey Pachai
                </a>
              </div>
              <p>Sed at malesuada urna. Mauris quis venenatis leo. Proin a malesuada purus. Suspendisse odio diam, ornare sit amet interdum ut, vehicula a lorem. Donec a sem erat. Etiam condimentum semper mauris vitae porttitor. Etiam posuere ultrices mauris vitae tincidunt. Cras lacinia, lectus quis ullamcorper auctor, mauris lacus imperdiet turpis, et semper enim massa ut.</p>
              <a class="btn btn-dark-gray">Read More</a>
            </div>
          </article>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- End: Latest Blog -->

<!-- Start: Our Community Section -->
<section class="community-testimonial">
  <div class="container">
    <div class="text-center">
      <h2 class="section-title">Words From our Community</h2>
      <span class="underline center"></span>
      <p class="lead">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
    </div>
    <div class="owl-carousel">
      <div class="single-testimonial-box">
        <div class="top-portion">
          <img src="${URL}template/assets/images/testimonial-image-01.jpg" alt="Testimonial Image" />
          <div class="user-comment">
            <div class="arrow-left"></div>
            <blockquote cite="#">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna magna, rhoncus eget commodo et, dignissim non nulla. Sed sit amet vestibulum ex. Donec dolor velit
            </blockquote>
          </div>
          <div class="clear"></div>
        </div>
        <div class="bottom-portion">
          <a href="${URL}template/assets/#" class="author">
            Adrey Pachai <small>(Student )</small>
          </a>
          <div class="social-share-links">
            <ul>
              <li><a href="${URL}template/assets/#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-skype" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
            </ul>
          </div>
          <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
      </div>
      <div class="single-testimonial-box">
        <div class="top-portion">
          <img src="${URL}template/assets/images/testimonial-image-02.jpg" alt="Testimonial Image" />
          <div class="user-comment">
            <div class="arrow-left"></div>
            <blockquote cite="#">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna magna, rhoncus eget commodo et, dignissim non nulla. Sed sit amet vestibulum ex. Donec dolor velit
            </blockquote>
          </div>
          <div class="clear"></div>
        </div>
        <div class="bottom-portion">
          <a href="${URL}template/assets/#" class="author">
            Maria B <small>(Student )</small>
          </a>
          <div class="social-share-links">
            <ul>
              <li><a href="${URL}template/assets/#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-skype" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
            </ul>
          </div>
          <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
      </div>
      <div class="single-testimonial-box">
        <div class="top-portion">
          <img src="${URL}template/assets/images/testimonial-image-01.jpg" alt="Testimonial Image" />
          <div class="user-comment">
            <div class="arrow-left"></div>
            <blockquote cite="#">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna magna, rhoncus eget commodo et, dignissim non nulla. Sed sit amet vestibulum ex. Donec dolor velit
            </blockquote>
          </div>
          <div class="clear"></div>
        </div>
        <div class="bottom-portion">
          <a href="${URL}template/assets/#" class="author">
            Adrey Pachai <small>(Student )</small>
          </a>
          <div class="social-share-links">
            <ul>
              <li><a href="${URL}template/assets/#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-skype" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
            </ul>
          </div>
          <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
      </div>
      <div class="single-testimonial-box">
        <div class="top-portion">
          <img src="${URL}template/assets/images/testimonial-image-02.jpg" alt="Testimonial Image" />
          <div class="user-comment">
            <div class="arrow-left"></div>
            <blockquote cite="#">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna magna, rhoncus eget commodo et, dignissim non nulla. Sed sit amet vestibulum ex. Donec dolor velit
            </blockquote>
          </div>
          <div class="clear"></div>
        </div>
        <div class="bottom-portion">
          <a href="${URL}template/assets/#" class="author">
            Maria B <small>(Student )</small>
          </a>
          <div class="social-share-links">
            <ul>
              <li><a href="${URL}template/assets/#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-skype" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
            </ul>
          </div>
          <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
      </div>
      <div class="single-testimonial-box">
        <div class="top-portion">
          <img src="${URL}template/assets/images/testimonial-image-01.jpg" alt="Testimonial Image" />
          <div class="user-comment">
            <div class="arrow-left"></div>
            <blockquote cite="#">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna magna, rhoncus eget commodo et, dignissim non nulla. Sed sit amet vestibulum ex. Donec dolor velit
            </blockquote>
          </div>
          <div class="clear"></div>
        </div>
        <div class="bottom-portion">
          <a href="${URL}template/assets/#" class="author">
            Adrey Pachai <small>(Student )</small>
          </a>
          <div class="social-share-links">
            <ul>
              <li><a href="${URL}template/assets/#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-skype" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
            </ul>
          </div>
          <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
      </div>
      <div class="single-testimonial-box">
        <div class="top-portion">
          <img src="${URL}template/assets/images/testimonial-image-02.jpg" alt="Testimonial Image" />
          <div class="user-comment">
            <div class="arrow-left"></div>
            <blockquote cite="#">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna magna, rhoncus eget commodo et, dignissim non nulla. Sed sit amet vestibulum ex. Donec dolor velit
            </blockquote>
          </div>
          <div class="clear"></div>
        </div>
        <div class="bottom-portion">
          <a href="${URL}template/assets/#" class="author">
            Maria B <small>(Student )</small>
          </a>
          <div class="social-share-links">
            <ul>
              <li><a href="${URL}template/assets/#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-skype" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
            </ul>
          </div>
          <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
      </div>
      <div class="single-testimonial-box">
        <div class="top-portion">
          <img src="${URL}template/assets/images/testimonial-image-01.jpg" alt="Testimonial Image" />
          <div class="user-comment">
            <div class="arrow-left"></div>
            <blockquote cite="#">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna magna, rhoncus eget commodo et, dignissim non nulla. Sed sit amet vestibulum ex. Donec dolor velit
            </blockquote>
          </div>
          <div class="clear"></div>
        </div>
        <div class="bottom-portion">
          <a href="${URL}template/assets/#" class="author">
            Adrey Pachai <small>(Student )</small>
          </a>
          <div class="social-share-links">
            <ul>
              <li><a href="${URL}template/assets/#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-skype" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
            </ul>
          </div>
          <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
      </div>
      <div class="single-testimonial-box">
        <div class="top-portion">
          <img src="${URL}template/assets/images/testimonial-image-02.jpg" alt="Testimonial Image" />
          <div class="user-comment">
            <div class="arrow-left"></div>
            <blockquote cite="#">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna magna, rhoncus eget commodo et, dignissim non nulla. Sed sit amet vestibulum ex. Donec dolor velit
            </blockquote>
          </div>
          <div class="clear"></div>
        </div>
        <div class="bottom-portion">
          <a href="${URL}template/assets/#" class="author">
            Maria B <small>(Student )</small>
          </a>
          <div class="social-share-links">
            <ul>
              <li><a href="${URL}template/assets/#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-skype" aria-hidden="true"></i></a></li>
              <li><a href="${URL}template/assets/#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
            </ul>
          </div>
          <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
      </div>
    </div>
  </div>
</section>
<!-- End: Our Community Section -->

<!-- Start: News & Event -->
<section class="news-events section-padding banner">
  <div class="container">
    <div class="center-content">
      <h2 class="section-title c-light">News &amp; Events</h2>
      <span class="underline center"></span>
      <p class="lead c-light">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.</p>
    </div>
    <div class="news-events-list">
      <div class="single-news-event">
        <figure>
          <img src="${URL}template/assets/images/news-event/news-event-01.jpg" alt="News & Event" />
        </figure>
        <div class="content-block">
          <div class="member-info">
            <div class="content_meta_category">
              <span class="arrow-right"></span>
              <a href="${URL}template/assets/#." rel="category tag">EVENT</a>
            </div>
            <ul class="news-event-info">
              <li>
                <a href="${URL}template/assets/#" target="_blank">
                  <i class="fa fa-calendar"></i>
                  July 25, 2016
                </a>
              </li>
              <li>
                <a href="${URL}template/assets/#" target="_blank">
                  <i class="fa fa-clock-o"></i>
                  10:15 AM - 10:15 PM
                </a>
              </li>
              <li>
                <a href="${URL}template/assets/#" target="_blank">
                  <i class="fa fa-map-marker"></i>
                  New York, USA
                </a>
              </li>
            </ul>
            <h3><a href="${URL}template/assets/.html#">It uses a dictionary of over 200 Latin word</a></h3>
            <p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model.</p>
            <a class="btn btn-primary" href="${URL}template/assets/#">Read More</a>
          </div>
        </div>
        <div class="clearfix"></div>
      </div>
      <div class="single-news-event">
        <figure>
          <img src="${URL}template/assets/images/news-event/news-event-02.jpg" alt="News & Event" />
        </figure>
        <div class="content-block">
          <div class="member-info">
            <div class="content_meta_category">
              <span class="arrow-right"></span>
              <a href="${URL}template/assets/#." rel="category tag">EVENT</a>
            </div>
            <ul class="news-event-info">
              <li>
                <a href="${URL}template/assets/#" target="_blank">
                  <i class="fa fa-calendar"></i>
                  July 25, 2016
                </a>
              </li>
              <li>
                <a href="${URL}template/assets/#" target="_blank">
                  <i class="fa fa-map-marker"></i>
                  New York, USA
                </a>
              </li>
            </ul>
            <h3><a href="${URL}template/assets/.html#">It uses a dictionary of over 200 Latin word</a></h3>
            <p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', </p>
            <a class="btn btn-primary" href="${URL}template/assets/#">Read More</a>
          </div>
        </div>
        <div class="clearfix"></div>
      </div>
      <div class="single-news-event">
        <figure>
          <img src="${URL}template/assets/images/news-event/news-event-03.jpg" alt="News & Event" />
        </figure>
        <div class="content-block">
          <div class="member-info">
            <div class="content_meta_category">
              <span class="arrow-right"></span>
              <a href="${URL}template/assets/#." rel="category tag">EVENT</a>
            </div>
            <ul class="news-event-info">
              <li>
                <a href="${URL}template/assets/#" target="_blank">
                  <i class="fa fa-calendar"></i>
                  July 25, 2016
                </a>
              </li>
              <li>
                <a href="${URL}template/assets/#" target="_blank">
                  <i class="fa fa-map-marker"></i>
                  New York, USA
                </a>
              </li>
            </ul>
            <h3><a href="${URL}template/assets/.html#">It uses a dictionary of over 200 Latin word</a></h3>
            <p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', </p>
            <a class="btn btn-primary" href="${URL}template/assets/#">Read More</a>
          </div>
        </div>
      </div>
      <div class="clearfix"></div>
    </div>
  </div>
</section>
<!-- End: News & Event -->
