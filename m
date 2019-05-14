Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A35541E582
	for <lists+linux-um@lfdr.de>; Wed, 15 May 2019 01:19:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gtekWtzg7UshlW1/qwWQcN4zvDBwDv6d+QYATTeNPVQ=; b=fNCeYgWRvPjC5d
	1OG8cjbAtXdlJKO3GEs39Pu1Lmm0kl+TEFopva3cplEaA4/jBSPBv3jNM2LYDlyxog2OXpZz/iNPD
	kkOEeWboH3omUmp4SWH1nJWHY3I867Wed+RC5Omnq/ctxntrYHERwU1dNNVtRZ3CRrVqnflJWE/au
	PJU1zrM6HCVi+hDfk8ttorXT6LZ75qz2stLlPCD99Pw4egGd9UebrzhxiW3YCRggW8FFQ9BkMfKmR
	fU98HABMC+Tgt3wtHkir2v2IvBWnBMuIEBP0AIW+KCeyohKgUb8kxXRDBRCIwvToVJz2gP/6O9A6A
	+qYmGW8js51mTuvkTLZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQghU-0004nD-KG; Tue, 14 May 2019 23:19:12 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQghR-0004mj-KO
 for linux-um@lists.infradead.org; Tue, 14 May 2019 23:19:10 +0000
Received: by mail-pl1-x643.google.com with SMTP id y3so350794plp.0
 for <linux-um@lists.infradead.org>; Tue, 14 May 2019 16:19:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=65cWsglVoepzFlykZ42+abk0YI6VmpB8isURvrndfio=;
 b=Bg39hYCrdxq9ZvR+2i/HlXSRaq6orpc1oOB8WF33oCVFV3rNh0CexWyS1Z8QPqlm8F
 634lbyY40ksqDjssWKmNVtGI+1F3APRXwSAL0XqoS1nJrYkqeYOkCUNp8JWFWm6ZNg2N
 3YnG2RckdXyh7Hd/JvDkJlfyEQP3VpBJF0SPvweC+YvdIQjG/OVFu00sC5S5PmUtedb0
 57OXt1xXLQFMEhV58WldO2KsTL77idwyKmIM1odUUjPKE4+37YyS67kBXQTSZPy0lER0
 iehTg4wcOiUIvCRTLfByhOie4AbWZpgc/tuXOmP4dOA/iaDvGuiNcBG7UtbS06g67YaV
 pQVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=65cWsglVoepzFlykZ42+abk0YI6VmpB8isURvrndfio=;
 b=SgbxVGEs5x5Kg1WMAc9oLan6sJLkD050uLKPtM0fCx9TJEYmMH2kPsnmajU/r0Pkvz
 bWaOfuxMyIXfdkIPYYOfBA65ydtXWtrRavSO2igbokwE0CfaE8stw+tuAYEMVJtzsT8w
 /ZatLSlKKFi0QZ5VHUxdwV11qmoYq+mKZCAC97uDO0PcHgNy4fLVlH+tGsxqo2dxCj3D
 7PySr5DMF4ypOnjyS8epdDBW7fXc+GG1kuos98ivn+QI8hsSOBCFk5ECfVMaNbP1xoYO
 Y5HeiV1jiS0LIs6Mez1AOP4bhlDT/Y9uQNnrlkFSzadKc+/lWr8e7AaT+EGtIyOU2J/Z
 prLQ==
X-Gm-Message-State: APjAAAXKIHbrwvgXGZX13CCWFpCA/QA6H8m1aYoUPlbr6R0r9K5FJPy5
 DPpEIMZpza9dQEegSbUh7BaMiA==
X-Google-Smtp-Source: APXvYqwRc6VN5ebH7uglXTpSRZvZHWA1IEE/QiHsPmobJB2SKK6EBwf8uUbYe/O8Vc0yLOYiPNp2/w==
X-Received: by 2002:a17:902:5998:: with SMTP id
 p24mr23416476pli.9.1557875948193; 
 Tue, 14 May 2019 16:19:08 -0700 (PDT)
Received: from google.com ([2620:15c:2cd:2:d714:29b4:a56b:b23b])
 by smtp.gmail.com with ESMTPSA id p64sm253565pfp.72.2019.05.14.16.19.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 14 May 2019 16:19:07 -0700 (PDT)
Date: Tue, 14 May 2019 16:19:02 -0700
From: Brendan Higgins <brendanhiggins@google.com>
To: Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH v3 15/18] Documentation: kunit: add documentation for KUnit
Message-ID: <20190514231902.GA12893@google.com>
References: <20190514054251.186196-1-brendanhiggins@google.com>
 <20190514054251.186196-16-brendanhiggins@google.com>
 <20190514073422.4287267c@lwn.net>
 <20190514180810.GA109557@google.com>
 <20190514121623.0314bf07@lwn.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514121623.0314bf07@lwn.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_161909_696756_CCDBE600 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -13.1 (-------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-13.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 2.6 FSL_HELO_FAKE          No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-nvdimm@lists.01.org, frowand.list@gmail.com, knut.omang@oracle.com,
 kieran.bingham@ideasonboard.com, Felix Guo <felixguoxiuping@gmail.com>,
 wfg@linux.intel.com, joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, dan.j.williams@intel.com,
 kunit-dev@googlegroups.com, tytso@mit.edu, richard@nod.at, sboyd@kernel.org,
 gregkh@linuxfoundation.org, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org, daniel@ffwll.ch,
 keescook@google.com, linux-fsdevel@vger.kernel.org, logang@deltatee.com,
 khilman@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 12:16:23PM -0600, Jonathan Corbet wrote:
> On Tue, 14 May 2019 11:08:10 -0700
> Brendan Higgins <brendanhiggins@google.com> wrote:
> 
> > > Naturally, though, I have one request: I'd rather not see this at the top
> > > level, which is more than crowded enough as it is.  Can this material
> > > please go into the development tools book, alongside the kselftest
> > > documentation?

Hmmm...probably premature to bring this up, but Documentation/dev-tools/
is kind of thrown together.

It would be nice to provide a coherent overview, maybe provide some
basic grouping as well.

It would be nice if there was kind of a gentle introduction to the
tools, which ones you should be looking at, when, why, etc.

> > Oh yeah, that seems like the obvious home for this in hindsight. Sorry
> > about that. Will fix in next revision!
> 
> No need to apologize - I have to say the same thing to everybody :)

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
