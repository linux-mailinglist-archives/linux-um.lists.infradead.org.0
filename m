Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C43D91CEBF
	for <lists+linux-um@lfdr.de>; Tue, 14 May 2019 20:12:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QXc3yV0c/wzIZj4snH/in5H3WZNbGn6hOCIZJvGcsOM=; b=bdPo4lvtLUpaJv
	MyqkPIGyu48dX8O9vm5eqkjaKCNWUhs5YacL6XPvjjEiBLlsjJ9+dlVe79m4VG16hR8n1U6D21Smn
	qke0p75Ceh/a8MR0sBcYlB3GvtO0/Lr3f0O4B0tpC1s09/hhdD6RvcqQRrge9q5yW4ytWWAEorAGL
	Xg6UGdfcExP+dxHyJL4/GHM2LFxD5AdM+Oxi2L9k7EtOeuw/0ttgpDDLA/B1z1Okmh6qBPkMfyOLZ
	ETNOm5PVgiy47zQkF0BZg4kHfl6GK5RGmmgFy0hExk7B/LbVzkZY4lu+73AaGPu50IGgNd6Ef+LYA
	oUBBoEfOc3qorxBj3d7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQbux-0005yH-0P; Tue, 14 May 2019 18:12:47 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQbuq-0005oc-HX
 for linux-um@lists.infradead.org; Tue, 14 May 2019 18:12:44 +0000
Received: by mail-pg1-x541.google.com with SMTP id 145so9013027pgg.9
 for <linux-um@lists.infradead.org>; Tue, 14 May 2019 11:12:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=N4UQ8E37RD8PM/SrG8N/O0bEDGjz00r1+gSc2WyT1f4=;
 b=Do+8Q+pHF8OB+tlzSEbCAlPOY5hObzGGmcvPm0YH3pOm8OWb+2EG6k/+3FX9ODnKET
 HeeejJJzGaiMQRAOmVbGKQQo9GMUp77yZaFJ+oq5A5++UZ2bqGz1eozejMrClIviWLaH
 6NqHaVQChwYnFjxvjCGyJrQCTbtCzP1YDVjWmeDvwiekfu/CIsr1rAo7eeV2cOghCM3s
 jg1XfDoXavpa+8h5sP6zhUgTkyTdA3gv3smrtEjkWIEZtUEMHzNqwHjzR4ACtYGyLA5t
 PjdZhQFtOg524SURCKg00duz4q2SfEaie9Z/aI0bjh6oNPjygJN8c7oYJhw88kmkUhL7
 hq9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=N4UQ8E37RD8PM/SrG8N/O0bEDGjz00r1+gSc2WyT1f4=;
 b=QIlbZnruVs5z1hl/NHP+0HiiW4P+CN/7SdjmxN8+zgYLYCrUS1icTsfCfa5jQFYjYy
 JyY9h5k2pmUxb0ls96Dpm+AkcbhTW8uPQR0XX+Tr9IrSOEPMch9z4OgFZ81Ao3t4XhDb
 B6ZfyxZw3P3yCb1ElLqUEBqmCgjnmIdAqqje4ws5/fieTh/8Ju+OF3au4HlqnCQON2ln
 UGoGQ8ze14thkMc/TDnVbi2xB7X/i9m91adyJ8zsea6E+9RkKnnZUmc/LRHe+el90aoU
 MNPcSfp2Rh/rhDokYvXzio70Cj3APn3SZcOJm2VtWVFlHaBC6zCCJRWU2z3LfYJzcMJD
 3Brw==
X-Gm-Message-State: APjAAAUG5+dZ0baV87NCKxcpTUmKkr4b17ZluTPGvYCrwzosIIEsjdY9
 cVqhnDx1ADhm/O9scvl/0w7lAA==
X-Google-Smtp-Source: APXvYqzF1W3MvAqglRw1f3U3GzCogO4oDzfR+rvBgcAvxH3aiWBoZY2un6t4j9IVvIzAxmzzun0V4w==
X-Received: by 2002:a62:d244:: with SMTP id c65mr3681839pfg.173.1557857559066; 
 Tue, 14 May 2019 11:12:39 -0700 (PDT)
Received: from google.com ([2620:15c:2cd:2:d714:29b4:a56b:b23b])
 by smtp.gmail.com with ESMTPSA id w189sm22611956pfw.147.2019.05.14.11.12.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 14 May 2019 11:12:38 -0700 (PDT)
Date: Tue, 14 May 2019 11:12:33 -0700
From: Brendan Higgins <brendanhiggins@google.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH v3 08/18] objtool: add kunit_try_catch_throw to the
 noreturn list
Message-ID: <20190514181233.GB109557@google.com>
References: <20190514054251.186196-1-brendanhiggins@google.com>
 <20190514054251.186196-9-brendanhiggins@google.com>
 <20190514065643.GC2589@hirez.programming.kicks-ass.net>
 <20190514081223.GA230665@google.com>
 <20190514084655.GK2589@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514084655.GK2589@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_111240_646605_63E9EDFE 
X-CRM114-Status: GOOD (  16.57  )
X-Spam-Score: -13.1 (-------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-13.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.6 FSL_HELO_FAKE          No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, amir73il@gmail.com,
 dri-devel@lists.freedesktop.org, Alexander.Levin@microsoft.com,
 yamada.masahiro@socionext.com, mpe@ellerman.id.au,
 linux-kselftest@vger.kernel.org, shuah@kernel.org, robh@kernel.org,
 kbuild test robot <lkp@intel.com>, linux-nvdimm@lists.01.org,
 frowand.list@gmail.com, knut.omang@oracle.com, kieran.bingham@ideasonboard.com,
 wfg@linux.intel.com, joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr,
 Josh Poimboeuf <jpoimboe@redhat.com>, dan.j.williams@intel.com,
 kunit-dev@googlegroups.com, tytso@mit.edu, richard@nod.at, sboyd@kernel.org,
 gregkh@linuxfoundation.org, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org, daniel@ffwll.ch,
 keescook@google.com, linux-fsdevel@vger.kernel.org, logang@deltatee.com,
 khilman@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 10:46:55AM +0200, Peter Zijlstra wrote:
> On Tue, May 14, 2019 at 01:12:23AM -0700, Brendan Higgins wrote:
> > On Tue, May 14, 2019 at 08:56:43AM +0200, Peter Zijlstra wrote:
> > > On Mon, May 13, 2019 at 10:42:42PM -0700, Brendan Higgins wrote:
> > > > This fixes the following warning seen on GCC 7.3:
> > > >   kunit/test-test.o: warning: objtool: kunit_test_unsuccessful_try() falls through to next function kunit_test_catch()
> > > > 
> > > 
> > > What is that file and function; no kernel tree near me seems to have
> > > that.
> > 
> > Oh, sorry about that. The function is added in the following patch,
> > "[PATCH v3 09/18] kunit: test: add support for test abort"[1].
> > 
> > My apologies if this patch is supposed to come after it in sequence, but
> > I assumed it should come before otherwise objtool would complain about
> > the symbol when it is introduced.
> 
> Or send me all patches such that I have context, or have a sane
> Changelog that gives me context. Just don't give me one patch with a
> crappy changelog.

I will provide more context in the next revision.

Sorry about that!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
