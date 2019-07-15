Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E5469F1B
	for <lists+linux-um@lfdr.de>; Tue, 16 Jul 2019 00:43:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u3AFbjHJ/U4vhr02F3vjLgQLAxd2WiD72Wn28sfk6cI=; b=OIXkhsZ4EmsLcB
	rKV7tefO63h3lDv7rPbOX2reIf7+Jj+xekbptoYVirtMVR4uz9M4gbj05SS4J/zdVp2Tpz4fTAUET
	Wmn+l38vLd4rC33tuYe0aCogrU/VMRwHw82v1zqptpwGDPswclNbz/H+HFSWqzoyruz8kmzABxGdC
	TF7IZ3hQDv8s/+eFB7F8FWe5Hw24yHkCVb/Kocjy6ip58rFBM8v9oG8FAHJr33k5+w+lndZrrPZaP
	Y57DiRf2CJZRmB3DW3Q88iadWccQo9Q6XzoAlGgnYV7RbSOCek4snkq/ReBISHo9DZNu1T5MhYj2s
	uxwpgDkRGok5IuZoNUJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn9h4-0001Yw-9L; Mon, 15 Jul 2019 22:43:38 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn9h1-0001YS-2n
 for linux-um@lists.infradead.org; Mon, 15 Jul 2019 22:43:36 +0000
Received: by mail-pg1-x542.google.com with SMTP id s1so2092297pgr.2
 for <linux-um@lists.infradead.org>; Mon, 15 Jul 2019 15:43:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=B0dmaddygNqZgaGUDAa6cmxBvESBVDt3nRTuc2Ed70Y=;
 b=TvefYQ4CXwYECIE1DD5mMNTXSS5HYvyG/pzvPIWc/AcUeE000MlMBoQ+UnA0lQ1n5F
 J7msY35wgId7ntbvKXqQfoaqQ86v3mXkjix4KiLl4u6U93/fC5IaevmselacDdowCR/G
 iyLUy9PuUK6XnxYy7VDz4MJceIVqGDB7wOfFH9e4PAIu+KvegnYNT6RGkjvCG2CcAryr
 zNpIkVs0KHES2MAvXC6bkPoPCjnPfiickXXO58iW726KzLdfp/yLgSvrpmy/5Ix9KBQ0
 9sghkw+DYAjzdFPtaBU764DprOajqeRr5/CW8du6jhE57m3uscWi90TZpp/kvfYXdZoS
 /10w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B0dmaddygNqZgaGUDAa6cmxBvESBVDt3nRTuc2Ed70Y=;
 b=TtY3bIxN0v9SCeKQzpuJakUTWCUQpqRahI5nMV2XvoGmEoGpcYeiEkCEhgmAdGbqUp
 aXVXA12AY7T1FOjNGQHEas3PRJNBJ+6nRUUtMRu+dayjJ0swm47x8uFPJPEDCNfB+ZoW
 lwm9TY04IyZsMRXKk7PtTlWdayJuIfy6Vq16/GEtWXkB0o0YWV9uUiH1Fzbi6tuZu6N0
 TXRh8HHNjL1pfdzxks7uLqjhHOnrS24ggF3VSmCgiuafEKG7B1BrgZh/pNFyswTMckit
 kCzFBxNbdlXzSUF2W0bSlHswQuIBw23AaMs0ZlvfZU/G2NHV15UwH9nIo0TVgf+2bHok
 /uVA==
X-Gm-Message-State: APjAAAUla5jgGLX1nfIUxLWQTbx+wIq2t5LJkE45rUeiKIgseBx+jixV
 ONG3eUWp/psmB2iTYR0v8GimebpuTnPsNwJNyrUtoQ==
X-Google-Smtp-Source: APXvYqwafDOiX+PiabduZWro+OOpT5RPBS9Ci2pxCrNN9UWVIxex8mHl/Rh2UWEvSxgoEZAT49mdKVcWgja67R7I7ck=
X-Received: by 2002:a63:eb51:: with SMTP id b17mr28611693pgk.384.1563230612372; 
 Mon, 15 Jul 2019 15:43:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190712081744.87097-1-brendanhiggins@google.com>
 <20190712081744.87097-4-brendanhiggins@google.com>
 <20190715204356.4E3F92145D@mail.kernel.org>
 <CAFd5g47481sRaez=yEJN4_ghiXZbxayk1Y04tAZpuzPLsmnhKg@mail.gmail.com>
 <20190715220407.0030420665@mail.kernel.org>
 <CAFd5g44bE0F=wq_fOAnxFTtoOyx1dUshhDAkKWr5hX9ipJ4Sxw@mail.gmail.com>
In-Reply-To: <CAFd5g44bE0F=wq_fOAnxFTtoOyx1dUshhDAkKWr5hX9ipJ4Sxw@mail.gmail.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Mon, 15 Jul 2019 15:43:20 -0700
Message-ID: <CAFd5g47y4vDB2P=EsGN8305LGeQPCTveNs-Jd5-=6K-XKY==CA@mail.gmail.com>
Subject: Re: [PATCH v9 03/18] kunit: test: add string_stream a std::stream
 like string builder
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_154335_149072_066B5988 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: Petr Mladek <pmladek@suse.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 shuah <shuah@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>,
 Frank Rowand <frowand.list@gmail.com>, Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kbuild <linux-kbuild@vger.kernel.org>, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Josh Poimboeuf <jpoimboe@redhat.com>, kunit-dev@googlegroups.com,
 Theodore Ts'o <tytso@mit.edu>, Richard Weinberger <richard@nod.at>,
 Greg KH <gregkh@linuxfoundation.org>, Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>, Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Jul 15, 2019 at 3:11 PM Brendan Higgins
<brendanhiggins@google.com> wrote:
>
> On Mon, Jul 15, 2019 at 3:04 PM Stephen Boyd <sboyd@kernel.org> wrote:
> >
> > Quoting Brendan Higgins (2019-07-15 14:11:50)
> > > On Mon, Jul 15, 2019 at 1:43 PM Stephen Boyd <sboyd@kernel.org> wrote:
> > > >
> > > > I also wonder if it would be better to just have a big slop buffer of a
> > > > 4K page or something so that we almost never have to allocate anything
> > > > with a string_stream and we can just rely on a reader consuming data
> > > > while writers are writing. That might work out better, but I don't quite
> > > > understand the use case for the string stream.
> > >
> > > That makes sense, but might that also waste memory since we will
> > > almost never need that much memory?
> >
> > Why do we care? These are unit tests.
>
> Agreed.
>
> > Having allocations in here makes
> > things more complicated, whereas it would be simpler to have a pointer
> > and a spinlock operating on a chunk of memory that gets flushed out
> > periodically.
>
> I am not so sure. I have to have the logic to allocate memory in some
> case no matter what (what if I need more memory that my preallocated
> chuck?). I think it is simpler to always request an allocation than to
> only sometimes request an allocation.

Another even simpler alternative might be to just allocate memory
using kunit_kmalloc as we need it and just let the kunit_resource code
handle cleaning it all up when the test case finishes.

What do you think?

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
